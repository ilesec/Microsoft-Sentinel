##################################################################################################################
# Command line usage:
# .\dcrcreator.ps1
##################################################################################################################

param (
    [Parameter(Mandatory=$true)]
    [string]$ruleName,

    [Parameter(Mandatory=$true)]
    [string]$location,

    [Parameter(Mandatory=$true)]
    [string]$resourceGroupName,

    [Parameter(Mandatory=$true)]
    [string]$workspaceName,

    [Parameter(Mandatory=$true)]
    [string]$subscriptionId,

    [Parameter(Mandatory=$true)]
    [string]$streamIdentifier,

    [Parameter(Mandatory=$true)]
    [string]$inputStream,

    [Parameter(Mandatory=$true)]
    [string]$outputStream,

    [Parameter(Mandatory=$true)]
    [string]$transformation
)

# Display the banner
Write-Host " +=====================+"
Write-Host " | dcrCreator.ps1      |"
Write-Host " | by Ilkka Hyvönen    |"
Write-Host " +=====================+"
Write-Host ""

# Define the Data Collection Rule configuration
$dataCollectionRuleJson = @"
{
    "location": "$location",
    "kind": "WorkspaceTransforms",
    "properties": {
        "dataSources": {},              
        "destinations": {
            "logAnalytics": [
                {
                    "workspaceResourceId": "/subscriptions/$subscriptionId/resourceGroups/$resourceGroupName/providers/microsoft.operationalinsights/workspaces/$workspaceName",
                    "name": "$streamIdentifier"
                }
            ]
        },
        "dataFlows": [
            {
                "streams": [
                    "$inputStream"
                ],
                "destinations": [
                    "$streamIdentifier"
                ],
                "transformKql": "$transformation",
                "outputStream": "$outputStream"
            }
        ]
    }
}
"@

#Output of the JSON DCR
Write-Host $dataCollectionRuleJson

Out-File -FilePath .\dcrcreator.json -InputObject $dataCollectionRuleJson

# Create the Data Collection Rule using Azure CLI
# az monitor data-collection rule create --resource-group $resourceGroupName --name $ruleName --location $location --rule-file dcrcreator.JSON
New-AzDataCollectionRule -Name $ruleName -ResourceGroupName $resourceGroupName -JsonFilePath dcrcreator.json

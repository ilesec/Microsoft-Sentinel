## ARMSanitizer, an ARM Template Sanitizer script
## Scrubs sensitive information from ARM templates
## Author: Ilkka Hyvönen
## Version: 0.1

param (
    [string]$templatePath
)

if (-not $templatePath) {
    Write-Error "Please provide the path to the ARM template file."
    exit 1
}

# Read the content of the ARM template
$templateContent = Get-Content -Path $templatePath -Raw

# Define regex patterns to match subscription IDs, workspace IDs, and resource group names
$subscriptionIdPattern = "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}"
$workspaceIdPattern = "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}"
$resourceGroupNamePattern = "(?<=/resourceGroups/)[^/]+"

# Replace subscription IDs, workspace IDs, and resource group names with placeholders
$sanitizedContent = $templateContent -replace $subscriptionIdPattern, "<subscription-id>"
$sanitizedContent = $sanitizedContent -replace $workspaceIdPattern, "<workspace-id>"
$sanitizedContent = $sanitizedContent -replace $resourceGroupNamePattern, "<resource-group-name>"

# Save the sanitized content back to the file or a new file
$sanitizedTemplatePath = [System.IO.Path]::ChangeExtension($templatePath, "sanitized.json")
Set-Content -Path $sanitizedTemplatePath -Value $sanitizedContent

Write-Output "Sanitization complete. Sanitized template saved to $sanitizedTemplatePath"
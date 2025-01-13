# Data Collection Rule template for Workspace Tranformations
💡 Helps create DCR's for workspace transformation </br>

Author: Ilkka Hyvönen

## Pre-requisites:
Table must be Type "Custom table", not "Custom table (classic)" in the table properties: https://learn.microsoft.com/en-us/azure/azure-monitor/logs/manage-logs-tables?tabs=azure-portal#view-table-properties

## Instructions
Deploy with the button below or copy-paste dcrtemplate.json contents and paste to Custom deployment in Azure. Fill in the required details:
![Screenshot of the deployment template.](https://github.com/ilesec/Microsoft-Sentinel/blob/main/Scripts/dcrtemplate/dcrtemplate.png?raw=true)
- Workspace Resource ID is in format /subscriptions/*subscriptionId*/resourceGroups/*resourcegroupname*/providers/microsoft.operationalinsights/workspaces/workspacename
- Transformation Query is the transformation in KQL, "source" means it unchanged
- Stream name can be anything, just as long as it's unique to the stream. E.g. cl2ws1
- Input and output streams are format Custom-*tablename* or Microsoft-*tablename*. Input and output streams can also be same

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Filesec%2FMicrosoft-Sentinel%2Frefs%2Fheads%2Fmain%2FScripts%2Fdcrtemplate%2Fdcrtemplate.json)

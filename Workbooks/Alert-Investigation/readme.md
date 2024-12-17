# Alert Investigation Sentinel Workbook
💡 Workbook to view Sentinel Alert details such as Custom Details and original alert query output
💡 It will unpack all custom details into columns for easier viewing

![Screenshot of the workbook](https://github.com/ilesec/Microsoft-Sentinel/blob/main/Workbooks/Alert-Investigation/workbook.png?raw=true)

Author: Ilkka Hyvönen

## Instructions
Use the deployment link below or copy-paste the JSON file, and paste it into Custom Deployment template in Azure. 
![Screenshot of the deployment template.](https://github.com/ilesec/Microsoft-Sentinel/blob/main/Workbooks/Alert-Investigation/Workbookdeployment.png?raw=true)

💡  Source ID needs to be in the following format if you want to see the Workbook under your Sentinel Workbooks section:
/subscriptions/<subscription id>/resourcegroups/<rg name>/providers/microsoft.operationalinsights/workspaces/<la workspace name>>


[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Filesec%2FMicrosoft-Sentinel%2Frefs%2Fheads%2Fmain%2FWorkbooks%2FAlert-Investigation%2Fazuredeploy.json)

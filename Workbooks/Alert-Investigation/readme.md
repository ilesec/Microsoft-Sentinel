# Alert Investigation Sentinel Workbook
💡 Workbook to view Sentinel Alert details such as Custom Details and original alert query output </br>
💡 It will unpack all custom details into columns for easier viewing </br>

Author: Ilkka Hyvönen

Check out the LinkedIn [article](https://www.linkedin.com/pulse/sentinel-workbook-view-custom-details-alert-query-output-hyv%25C3%25B6nen-satif/) describing the Workbook.


![Screenshot of the workbook](https://github.com/ilesec/Microsoft-Sentinel/blob/main/Workbooks/Alert-Investigation/workbook.png?raw=true)

## Instructions
Use the deployment link below or copy-paste the JSON file, and paste it into Custom Deployment template in Azure. </br>

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Filesec%2FMicrosoft-Sentinel%2Frefs%2Fheads%2Fmain%2FWorkbooks%2FAlert-Investigation%2Fazuredeploy.json)

![Screenshot of the deployment template.](https://github.com/ilesec/Microsoft-Sentinel/blob/main/Workbooks/Alert-Investigation/Workbookdeployment.png?raw=true)

💡  Source ID needs to be in the following format if you want to see the Workbook under your Sentinel Workbooks section:
/subscriptions/_subscription id here_>/resourcegroups/_resource group name here_/providers/microsoft.operationalinsights/workspaces/_Log Analytics workspace name_</br>

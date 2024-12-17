# Send dynamic email notifications Sentinel Playbook
💡 Playbook to send e-mail notifications to resource owners or other stakeholders based on log data. <br/>
💡 The e-mail notification includes Alert Custom Details. <br/>
🆕 Now includes a CC field in addition to To field <br/>
🆕 Parametrized Watchlist name and columns for To and CC columns in the Watchlist <br/>
🆕 Log Analytics connection uses Managed Identity </br>

Author: Ilkka Hyvönen

## Article explaining the details
The original article explaining the steps is in [LinkedIn](https://www.linkedin.com/pulse/microsoft-sentinel-playbook-sending-e-mail-alert-details-hyv%C3%B6nen-gsmwf/)

## Pre-requisites:
1. An O365 account to be used to send email notification (The user account will be used in O365 connector (Send an email).
2. Microsoft Log Analytics connector is used to run the Log Analytics workspace query.
3. The Playbook needs to have a Log Analytics Reader Azure role assignment for the Managed Identity.

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Filesec%2FMicrosoft-Sentinel%2Frefs%2Fheads%2Fmain%2FPlaybooks%2Fdynamic-email-notifications%2Fazuredeploy.json)

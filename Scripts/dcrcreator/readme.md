# Data Collection Rule creation tool for Workspace Tranformations
💡 Helps create DCR's for workspace transformation </br>

Author: Ilkka Hyvönen

## Pre-requisites:
Table must be Type "Custom table", not "Custom table (classic)" in the table properties: https://learn.microsoft.com/en-us/azure/azure-monitor/logs/manage-logs-tables?tabs=azure-portal#view-table-properties

## Instructions
1. Upload the script to your Azure Cloud Shell
2. run ./dcrcreator.ps1
3. Enter required parameters: Rule Name, Location, Resource Group Name, Workspace Name, Subscription Id, Stream Identifier, Input Stream and Output Stream (Custom-<tablename> or Microsoft-<tablename>), and the Transformation Query in KQL
4. The script then runs and outputs the DCR in JSON
5. The JSON is stored into a temporary file (dcrcreator.json)
6. The script uses the JSON file to create the rule
# Data Collection Rule for Keycloak logs
💡 Ingest data from Keycloak
💡 Add your own Workspace transformation if neeed

Author: Ilkka Hyvönen

## Article explaining the details
The original article explaining the steps is in [LinkedIn](https://www.linkedin.com/ )

## Pre-requisites:
1. Keycloak installed and logging of user and admin events enabled
2. Database for Keycloak installed, database user created and privileges granted
3. Custom table created

## Instructions:
Use the deploy button below and customize any parameters if required. After deployment, take a note of the ImmutableId and Logsingestion API endpoint. These will be used for Logstash plugin configuration.

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://raw.githubusercontent.com/ilesec/Microsoft-Sentinel/refs/heads/main/Connectors/Keycloak/azuredeploy.json)

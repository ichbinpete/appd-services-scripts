#!/bin/bash

export JAVA_BIN="/usr/bin/java"

export APPD_RUNTIME_USER="ubuntu"

export APPD_HOME=/home/ubuntu/AppDynamics
export APPD_CONTROLLER_HOME=$APPD_HOME/Controller
export APPD_EUM_HOME=$APPD_HOME/EUM
export APPD_EVENTS_SERVICE_HOME=$APPD_HOME/events-service
export APPD_JAVA_AGENT_HOME=$APPD_HOME/javaagent
export APPD_DB_AGENT_HOME=$APPD_HOME/dbagent
export APPD_MACHINE_AGENT_HOME=$APPD_HOME/machineagent

export APPDYNAMICS_CONTROLLER_HOST_NAME=localhost
export APPDYNAMICS_CONTROLLER_PORT=8090
export APPDYNAMICS_CONTROLLER_SSL_ENABLED=false
export APPDYNAMICS_AGENT_ACCOUNT_NAME=customer1
export APPDYNAMICS_AGENT_ACCOUNT_ACCESS_KEY=0d486055-bed8-423b-b958-54ac88324226
export APPDYNAMICS_AGENT_UNIQUE_HOST_ID=$HOSTNAME

APPD_AGENT_OPTIONS="$AGENT_OPTIONS -Dappdynamics.controller.hostName=$APPDYNAMICS_CONTROLLER_HOST_NAME"
APPD_AGENT_OPTIONS="$AGENT_OPTIONS -Dappdynamics.controller.port=$APPDYNAMICS_CONTROLLER_PORT"
APPD_AGENT_OPTIONS="$AGENT_OPTIONS -Dappdynamics.controller.ssl.enabled=$APPDYNAMICS_CONTROLLER_SSL_ENABLED"
APPD_AGENT_OPTIONS="$AGENT_OPTIONS -Dappdynamics.agent.accountName=$APPDYNAMICS_AGENT_ACCOUNT_NAME"
APPD_AGENT_OPTIONS="$AGENT_OPTIONS -Dappdynamics.agent.accountAccessKey=$APPDYNAMICS_AGENT_ACCOUNT_ACCESS_KEY"
APPD_AGENT_OPTIONS="$AGENT_OPTIONS -Dappdynamics.agent.uniqueHostId=$APPDYNAMICS_AGENT_UNIQUE_HOST_ID"
export APPD_AGENT_OPTIONS
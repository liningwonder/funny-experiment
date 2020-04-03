#!/bin/bash

# shellcheck disable=SC2046
# shellcheck disable=SC2164
APP_HOME_PATH=$(cd `dirname $0`; pwd)
# shellcheck disable=SC2164
cd "$APP_HOME_PATH"

JAVA_HOME=/opt/jdk-14

JAR_PATH=/opt/demo-0.0.1-SNAPSHOT.jar

START_LOG=/opt/start.log

//远程debug
JAVA_OPTIONS="-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:5005"

nohup $JAVA_HOME/bin/java -server $JAVA_OPTIONS -jar $JAR_PATH >> $START_LOG 2>&1 & 

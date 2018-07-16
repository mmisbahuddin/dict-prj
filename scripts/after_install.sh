#!/bin/bash
cat /usr/share/tomcat/conf/setenv.txt>>tomcat.conf
cp -R /opt/codedeploy-agent/deployment-root/$DEPLOYMENT_GROUP_ID/$DEPLOYMENT_ID/deployment-archive/code/dictionary-app /usr/share/tomcat/webapps/
systemctl start tomcat
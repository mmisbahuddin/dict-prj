#!/bin/bash
rm /usr/share/tomcat/conf/tomcat.conf
cp /usr/share/tomcat/conf/tomcat.conf.orig /usr/share/tomcat/conf/tomcat.conf
cat /usr/share/tomcat/conf/setenv.txt>>/usr/share/tomcat/conf/tomcat.conf
cp -R /opt/codedeploy-agent/deployment-root/$DEPLOYMENT_GROUP_ID/$DEPLOYMENT_ID/deployment-archive/code/dictionary-app /usr/share/tomcat/webapps/
systemctl start tomcat
#!/bin/bash
rm /usr/share/tomcat/conf/setenv.txt
systemctl stop tomcat
rm -rf /usr/share/tomcat/webapps/dictionary-app
rm -rf /usr/share/tomcat/work/Catalina/localhost/dictionary-app
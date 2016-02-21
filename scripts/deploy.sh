#!/bin/bash

tomcat_pid=`/usr/sbin/lsof -n -P -t -i :9009`
[ -n "$tomcat_pid" ] && kill -9 $tomcat_pid

cd /home/
mv ROOT.war ROOT.war.bak
wget http://10.238.29.164:8080/jenkins/job/pcitc-fbd/ws/target/ROOT.war
rm /home/apache-tomcat-7.0.63/webapps/ROOT.war
rm -fr /home/apache-tomcat-7.0.63/webapps/ROOT
cp ROOT.war /home/apache-tomcat-7.0.63/webapps/ROOT.war

cd /home/apache-tomcat-7.0.63/bin/
./startup.sh
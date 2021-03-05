#!/bin/bash
#
for i in `cat IPs.txt`
do
echo "deploying the code to $i ..."
sleep 3
echo "deployment to $i is succussful!"
sshpass -p gamut scp target/gamutgurus.war gamut@$i:/home/gamut/Distros/apache-tomcat-8.5.63/webapps
sshpass -p $PASSWORD ssh gamut@$i "/home/gamut/Distros/apache-tomcat-8.5.63/bin/startup.sh"

done

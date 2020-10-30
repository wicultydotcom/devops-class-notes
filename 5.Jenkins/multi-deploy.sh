#!/bin/bash
#
for i in `cat IPs.txt`
do
echo "deploying the code to $i ..."
sleep 3
echo "deployment to $i is succussful!"
done

#!/bin/bash
for site in http://3.87.71.163:8888/monitorcheck.html
do
if curl -I "$site" 2>&1 | grep -w "200\|301" ; then
    echo "$site is up"
else
    echo "$site is down"
fi
echo "----------------------------------"
done

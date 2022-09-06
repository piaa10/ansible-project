#!/bin/bash
url=http://3.87.71.163:8888/monitorcheck.html

if curl -I --max-time 1 "$url" 2>&1 | grep -w "200\|301" ; then
    echo "Your site is up"
else
    echo "your site is down"
fi

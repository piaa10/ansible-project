#!/bin/bash
header="http://"
domain=$(curl ifconfig.co)
port=":8888/monitorcheck.html"

url="$header$domain$port"

if curl -I --max-time 1 "$url" 2>&1 | grep -w "200\|301" ; then
    echo "Your site is up"
else
    echo "your site is down"
fi


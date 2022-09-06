if curl -s --head  --request GET  http://3.87.71.163:8888/monitorcheck.html | grep "200 OK" > /dev/null; then 
   echo "mysite.com is UP"
else
   echo "mysite.com is DOWN"
fi

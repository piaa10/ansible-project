curl -Is http://3.87.71.163:8888/monitorcheck.html | head -1
if [ $? -ne 0 ]
then echo "Server is UP"
else
echo "Server is down"
fi

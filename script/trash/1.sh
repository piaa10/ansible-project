curl -Is http://3.87.71.163:8888/monitorcheck.html | head -1 > tmt.txt
if [[ 'grep '200' tmt.txt' ]];then
   echo "Server is up"
else
   echo "server is down"
fi

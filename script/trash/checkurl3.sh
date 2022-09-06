status="$(curl -Is http://3.87.71.163:8888/monitorcheck.html | head -1)"
validate=( $status )
if [ ${validate[-2]} == "200" ]; then
  echo "OK"
else
  echo "NOT RESPONDING"
fi

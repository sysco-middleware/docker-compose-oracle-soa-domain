echo ">> Waiting for admin server to start"
WAIT=0
WAIT_TIMEOUT=160
while ! telnet $ADMIN_SERVER_HOST $ADMIN_SERVER_PORT; do
  sleep 10
  WAIT=$(($WAIT + 10))
  if [ "$WAIT" -gt $WAIT_TIMEOUT ]; then
    echo "Timeout wating for admin server to start"
    exit 0
  fi
done

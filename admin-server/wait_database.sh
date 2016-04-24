echo ">> Waiting for oracle database to start"
WAIT=0
WAIT_TIMEOUT=80
while ! telnet $ORACLE_DATABASE_HOST $ORACLE_DATABASE_PORT; do
  sleep 10
  WAIT=$(($WAIT + 10))
  if [ "$WAIT" -gt $WAIT_TIMEOUT ]; then
    echo "Timeout wating for oracle database to start"
    exit 0
  fi
done

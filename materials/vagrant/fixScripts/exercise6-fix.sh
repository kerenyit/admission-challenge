#!/bin/bash

ARGS=("$@")
DEST_DIR=${ARGS[-1]}
LOGFILE=/tmp/rsync.log
HOSTNAME=$(hostname)

if [[ $HOSTNAME =~ "1" ]]; then
  TARGET_HOST=server2
elif [[ $HOSTNAME =~ "2" ]]; then
  TARGET_HOST=server1
else
  echo "Unknown hostname: $HOSTNAME"
  exit 1
fi

[ -e $LOGFILE ] && rm $LOGFILE

for i in "${@:1:$#-1}"; do
  rsync -q "$i" $TARGET_HOST:"$DEST_DIR" --log-file=$LOGFILE
done

TOTAL=$(grep -i total $LOGFILE | awk '{print $12}')

for n in $TOTAL; do
  let SUM=$SUM+$n
done
echo "$SUM"

EXTERNAL_PARAMS=$#
if [ $EXTERNAL_PARAMS -lt 2 ]; then
  echo "Usage: exercise6-fix.sh must recive at list 2 arguments "
  echo "exercise6-fix.sh [ file list ] path_to_copy"
  exit 1
fi

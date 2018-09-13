echo "$(date '+%d/%m/%Y %H:%M:%S') kill container"
echo "----------------------------------------------"
docker kill -s TERM $CONTAINER_NAME

echo "$(date '+%d/%m/%Y %H:%M:%S') wait container terminated"
echo "----------------------------------------------"
docker wait $CONTAINER_NAME

echo "$(date '+%d/%m/%Y %H:%M:%S') start backup"
echo "----------------------------------------------"
DATE=$(date '+%y-%m-%d')
/usr/local/bin/pitreos backup /data -s $STORAGE_PATH/$DATE -t pro -c -m '{"blocknum":"1", "version":"1.2.3"}'

echo "$(date '+%d/%m/%Y %H:%M:%S') restart container"
echo "----------------------------------------------"
docker start $CONTAINER_NAME

echo "$(date '+%d/%m/%Y %H:%M:%S') done"

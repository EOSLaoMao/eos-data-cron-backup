echo "$(date '+%d/%m/%Y %H:%M:%S') kill container"
docker kill -s TERM ubuntu
echo "$(date '+%d/%m/%Y %H:%M:%S') wait container terminated"
docker wait ubuntu
echo "$(date '+%d/%m/%Y %H:%M:%S') start backup"
# pitreos backup ... 
echo "$(date '+%d/%m/%Y %H:%M:%S') restart container"
docker start ubuntu
echo "$(date '+%d/%m/%Y %H:%M:%S') done"

SERVER_NAME="smonitor"
PID=`ps -ef|grep "$SERVER_NAME" |grep -v grep |awk '{print $2}'`
echo "得到进程ID: $PID"
echo "结束进程"
for id in $PID
do
    kill -9 $id
    echo "killed $id"
done
sleep 5
echo "结束进程完成"

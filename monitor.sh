
#!/bin/sh
while true
do
        process=`ps -ef| grep bityuan | grep -v grep`; #查询mysqld进程，grep -v grep去掉grep进程
 
        if [ "$process" = "" ]; then
                cd;
                sleep 1;
                echo "process start";
                cd /data/chain33
                nohup ./chain33&;
                cd;
                
        else
                echo "process exsits";
                sleep 600;
                
        fi
done

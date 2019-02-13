
#!/bin/sh
while true
do
        process=`ps -ef| grep chain33 | grep -v grep`; #查询mysqld进程，grep -v grep去掉grep进程
 
        if [ "$process" = "" ]; then
                
               # nohup ./chain33 &
                sleep 1;
                echo "process start";
                
        else
                echo "process exsits";
                sleep 1200;
                
        fi
done


#!/bin/sh
while true
do
        process=`ps -ef| grep chain33 | grep -v grep`; #查询mysqld进程，grep -v grep去掉grep进程
 
        if [ "$process" = "" ]; then
                sleep 10;
                echo $process;
                
        else
                echo "process exsits";
                
        fi
done

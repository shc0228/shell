
#!/bin/sh
while true
do
        process=`ps -ef| grep chain33 | grep -v grep`; #查询mysqld进程，grep -v grep去掉grep进程
 
        if [ "$process" == "" ]; then
                sleep 1;
                echo "process 不存在,开始执行";
         
        else
                echo "process exsits";
                break;
        fi
done

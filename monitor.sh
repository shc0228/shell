
#!/bin/sh
while true
do
        cd;
        process=`ps -ef| grep chain33 | grep -v grep`; #查询mysqld进程，grep -v grep去掉grep进程
 
        if [ "$process" = "" ]; then
                sleep 1;
                echo "process start";
                nohup bash -c "cd chain33&&./chain33& ";
                cd;
                
        else
                echo "process exsits";
                sleep 1200;
                
        fi
done

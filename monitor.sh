
#!/bin/sh
while true
do
        process=`ps -ef| grep chain33 | grep -v grep`; 
        
        if [ "$process" == "" ]; then
                sleep 1;
                echo "process 不存在,开始执行";
                nohup ./chain33 &;
        fi
        sleep 1000;
done

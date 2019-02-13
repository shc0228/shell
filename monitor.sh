while [1 -eq 1]  #死循环
do 
   for procname in chain33 #需要检测的进程名字
   do
     pgrep $procname
     if [0 -ne$? ]  #如果进程不存在就重启它
     then
         ./chain33
      fi
   done
   sleep 10
done


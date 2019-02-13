#!/bin/sh

flag=1
result=1
while [ "$flag" -eq 1 ]
do
    sleep 100
    result=`pidof chain33`
    if [ -z "$result" ]; then
    echo "process is finished"
    flag=0
    fi
done


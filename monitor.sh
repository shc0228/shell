
#!/bin/bash

while [ 1 ]
do
    procID=`pgrep chain33`
    if [ "" == "$procID" ];
    then
        nohup ./chain33 &
    fi
    usleep 1000
done

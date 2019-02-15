#!/bin/sh

while true
do 
  cd;
  cd /www/chain33&&./chain33-cli wallet unlock -p T356st -t 0; 
  echo "unlock"; 
  sleep 3600; 
  cd; 
done 

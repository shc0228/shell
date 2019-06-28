#!/bin/sh

while true
do 
  cd;
  cd /chain33&&./chain33-cli wallet unlock -p bty123456 -t 0; 
  echo "unlock"; 
  sleep 3600; 
  cd; 
done 

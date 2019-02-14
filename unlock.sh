#!/bin/sh

while true
do 
  cd chain33&&./chain33-cli wallet unlock -p jiayou2018 -t 0; 
  echo "unlock"; 
  sleep 21600; 
  cd; 
done 

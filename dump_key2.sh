cd /
cd /www/chain33
./chain33-cli seed generate -l 0 | grep seed | cut -d '"' -f 4 > ~/mySeed.txt
cat ~/mySeed.txt | xargs -I{} ./chain33-cli seed save -p 123456 -s "{}"
./chain33-cli  wallet unlock  -p 123456 -s wallet -t 0
sleep 3
./chain33-cli account  list  | grep "node award" -B 2 | grep addr   | cut -d '"' -f 4 > ~/myNodeAddr
cat ~/myNodeAddr | xargs -I{} ./chain33-cli  account dump_key -a {} > ~/myNodePriv
cat ~/myNodePriv   | grep replystr | cut -d '"' -f 4 | xargs  -I{} echo "account import_key -l b -k {} "

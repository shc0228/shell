
[ ! -e /www/chain33 ] && curl -fsSL https://raw.githubusercontent.com/shc0228/shell/master/install_and_dumpkey4.sh | sh && exit 0
cd /tmp/
[ -e /tmp/chain33 ] && rm /tmp/chain33 -rf
[ -e /tmp/bityuan_ubuntu.tgz ] && rm /tmp/bityuan_ubuntu.tgz
cd /tmp/
wget https://bityuan.com/download/bityuan_ubuntu.tgz
tar zxf bityuan_ubuntu.tgz
cd chain33
[ -e chain33 ] && install chain33 /www/chain33/chain33
[ -e chain33-cli ] && install chain33-cli /www/chain33/chain33-cli
[ -e chain33.toml ] && install chain33.toml /www/chain33/chain33.toml
[ -e bityuan.toml ] && install bityuan.toml /www/chain33/bityuan.toml
[ -e bityuan.lite.toml ] && install bityuan.lite.toml /www/chain33/bityuan.lite.toml
[ -e chain33.conf ] && supervisorctl reload
supervisorctl restart chain33
sleep 15
cd /www/chain33
./chain33-cli net info

pass="123456"
[ -e ~/myPass ] && pass=`cat ~/myPass`
./chain33-cli  wallet unlock  -p $pass -s wallet -t 0

sleep 15
./chain33-cli account  list  | grep "airdropaddr" -B 2 | grep addr  -w | cut -d '"' -f 4 > ~/myAirdropAddr
cat ~/myAirdropAddr | xargs -I{} ./chain33-cli  account dump_key -a {} > ~/myAirdropPriv
cat ~/myAirdropPriv | grep data| cut -d '"' -f 4 | xargs  -I{} echo "Run the cmd in wallet PC: account import_key -l ali00001 -k {} "

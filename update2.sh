[ ! -e /www/chain33 ] && curl -fsSL https://raw.githubusercontent.com/asinen/S357/master/install_and_dumpkey.sh | sh && exit 0
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
[ -e chain33.conf ] && supervisorctl reload
supervisorctl restart chain33
sleep 15
cd /www/chain33
./chain33-cli net info

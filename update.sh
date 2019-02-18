[ ! -e /data/chain33 ] && curl -fsSL https://raw.githubusercontent.com/shc0228/shell/master/install_and_dumpkey.sh | sh && exit 0
cd /tmp/
[ -e /tmp/chain33 ] && rm /tmp/chain33 -rf
[ -e /tmp/bityuan_ubuntu.tgz ] && rm /tmp/bityuan_ubuntu.tgz
cd /tmp/
wget https://bityuan.com/download/bityuan_ubuntu.tgz
tar zxf bityuan_ubuntu.tgz
cd chain33
[ -e chain33 ] && install chain33 /root/chain33/chain33
[ -e chain33-cli ] && install chain33-cli /root/chain33/chain33-cli
[ -e chain33.toml ] && install chain33.toml /root/chain33/chain33.toml
[ -e bityuan.toml ] && install bityuan.toml /root/chain33/bityuan.toml
[ -e bityuan.lite.toml ] && install bityuan.lite.toml /root/chain33/bityuan.lite.toml
[ -e chain33.conf ] && install chain33.conf /etc/supervisor/conf.d/chain33.conf && supervisorctl reload
supervisorctl restart chain33
sleep 15
cd /data/chain33
./chain33-cli net info

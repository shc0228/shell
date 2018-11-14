cd /www/
[ -e chain33 ] && cd chain33 && ./chain33-cli net info && exit 0
apt-get update
apt-get install wget -y
apt-get install supervisor -y
wget https://bityuan.com/download/bityuan_ubuntu.tgz
tar zxf bityuan_ubuntu.tgz
cd chain33
wget https://raw.githubusercontent.com/asinen/S357/master/33.conf
mv 33.conf /www/chain33/chain33.conf
cp chain33.conf /etc/supervisor/conf.d/chain33.conf
supervisorctl reload
supervisorctl start chain33
sleep 15
./chain33-cli net info

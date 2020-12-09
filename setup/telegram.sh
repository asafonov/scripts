su -c "apt-get install tor wget xz-utils"
cd ~/work
torsocks wget -O telegram.tar.xz https://telegram.org/dl/desktop/linux
tar -xvf telegram.tar.xz
rm telegram.tar.xz

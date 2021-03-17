export WORK=/home/asafonov/work
sudo apt-get install bzip2 wget xz-utils
cd $WORK
rm -rf $WORK/node*
wget https://nodejs.org/dist/v14.16.0/node-v14.16.0-linux-x64.tar.xz
tar -xvf node-v14.16.0-linux-x64.tar.xz
rm node-v14.16.0-linux-x64.tar.xz
sudo rm /usr/bin/node
sudo rm /usr/bin/npm
sudo ln -s $WORK/node-v14.16.0-linux-x64/bin/node /usr/bin/node
sudo ln -s $WORK/node-v14.16.0-linux-x64/bin/npm /usr/bin/npm

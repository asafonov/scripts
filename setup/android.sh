su -c "apt-get install -y wget default-jre"
mkdir ~/android
cp my-release-key.jks ~/android
cd ~/android
wget https://dl.google.com/android/repository/commandlinetools-linux-6200805_latest.zip
unzip commandlinetools-linux-6200805_latest.zip
rm commandlinetools-linux-6200805_latest.zip
export ANDROID_HOME=/home/asafonov/android
./tools/bin/sdkmanager "build-tools;29.0.3" --sdk_root=$ANDROID_HOME
echo "export ANDROID_HOME=/home/asafonov/android" >> ~/.bashrc

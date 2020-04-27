#!/bin/bash
##Instalação do Node
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs
node -v
npm -v

##Instalação do NVM
sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
sudo sed -i '1 i\export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"\n[ -s "$NVM_DIR/nvm.sh" ] && \\. "$NVM_DIR/nvm.sh" # This loads nvm' .zshrc

##Instalação do Yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install yarn
yarn -v

##Instalação da CLI do React APP
sudo yarn global add create-react-app

##Instalação do Docker
sudo apt update
sudo apt remove docker docker-engine docker.io
sudo apt install docker.io

sudo systemctl start docker
sudo systemctl enable docker

docker version

##Instalação do JDK 8 (pasta padrão)
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get install openjdk-8-jdk
java -version

##Instalação de Libs Gráficas
sudo apt-get install gcc-multilib lib32z1 lib32stdc++6

##Preparativos para Android Studio
mkdir -p ~/Android/Sdk
sudo sed -i '1 i\export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64\nexport ANDROID_HOME=~/Android/Sdk\nexport PATH=$PATH:$ANDROID_HOME/emulator\nexport PATH=$PATH:$ANDROID_HOME/tools\nexport PATH=$PATH:$ANDROID_HOME/tools/bin\nexport PATH=$PATH:$ANDROID_HOME/platform-tools\n' .zshrc

##Instalando Android Studio
cd ~/
cd Downloads
wget https://redirector.gvt1.com/edgedl/android/studio/ide-zips/3.6.3.0/android-studio-ide-192.6392135-linux.tar.gz
tar -xvzf android-studio-ide-192.6392135-linux.tar.gz -C ~/
cd ~/
sudo sed -i '1 i\export PATH=$PATH:~/android-studio/bin' .zshrc
studio.sh
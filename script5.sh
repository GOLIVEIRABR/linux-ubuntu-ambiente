#!/bin/bash
echo "==========INSTALANDO O NODE======="
##Instalação do Node
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs -y
node -v
npm -v

echo "==========INSTALANDO NVM========"
##Instalação do NVM
sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
sudo sed -i '1 i\export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"\n[ -s "$NVM_DIR/nvm.sh" ] && \\. "$NVM_DIR/nvm.sh" # This loads nvm\n' ~/.zshrc

echo "==========INSTALANDO YARN========"
##Instalação do Yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install yarn -y
yarn -v

echo "=========INSTALANDO CLI DO REACT APP======"
##Instalação da CLI do React APP
sudo yarn global add create-react-app

echo "=========INSTALANDO DOCKER============"
##Instalação do Docker
sudo apt update -y
sudo apt remove docker docker-engine docker.io
sudo apt install docker.io -y

sudo systemctl start docker
sudo systemctl enable docker

sudo docker version

echo "========INSTALANDO JDK 8=========="
##Instalação do JDK 8 (pasta padrão)
sudo add-apt-repository ppa:openjdk-r/ppa -y
sudo apt-get update -y
sudo apt-get install openjdk-8-jdk -y
java -version

echo "==========INSTALANDO LIBS GRAFICAS========="
##Instalação de Libs Gráficas
sudo apt-get install gcc-multilib lib32z1 lib32stdc++6 libcanberra-gtk-module -y

echo "=========PREPARANDO ANDROID STUDIO=========="
##Preparativos para Android Studio
mkdir -p ~/Android/Sdk
cd ~/
sudo sed -i '1 i\export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64\nexport ANDROID_HOME=~/Android/Sdk\nexport PATH=$PATH:$ANDROID_HOME/emulator\nexport PATH=$PATH:$ANDROID_HOME/tools\nexport PATH=$PATH:$ANDROID_HOME/tools/bin\nexport PATH=$PATH:$ANDROID_HOME/platform-tools\n' ~/.zshrc

echo "=========INSTALANDO ANDROID STUDIO========="
##Instalando Android Studio
cd ~/
cd Downloads/Programas
wget https://redirector.gvt1.com/edgedl/android/studio/ide-zips/3.6.3.0/android-studio-ide-192.6392135-linux.tar.gz
tar -xvzf android-studio-ide-192.6392135-linux.tar.gz -C ~/
cd ~/
sudo sed -i '1 i\export PATH=$PATH:~/android-studio/bin\n' ~/.zshrc

echo '=======EXECUÇÃO DO SCRIPT TERMINADA========

Agora deverá ser iniciada a configuração manual do Android Studio.
Para isso, você deverá seguir as instruções contidas no link abaixo:

https://react-native.rocketseat.dev/android/linux#configurando-android-studio

A página já irá abrir na parte da configuração que é necessária. 
Se este script rodou sem erros, os únicos requisitos necessários para 
seguir as instruções do link acima são:
1 - Fechar este terminal e abrir um novo;
2 - Digitar o comando studio.sh (Este comando fará com que o programa de
configuração seja do Android Studio seja inicializado).

Pronto! a partir disso você já estará apto a executar as instruçẽos 
do link acima. 

Obs1:. O Script 6 realiza a instalação do KVM. O KVM é uma tecnologia específica
para ajudar na emulação de aplicativos e não é compatível com todos os sistemas.
Apenas execute o Script6.sh se durante a configuração do Android Studio um aviso
aparecer para você indicando que o seu sistema é compatível.

Obs2:. Estas instruções podem ser revistas dentro do arquivo Leia-ME.TXT
criado na pasta de Downloads pelos scripts.
'
echo '
============ANDROID STUDIO===============:
Agora deverá ser iniciada a configuração manual do Android Studio.
Para isso, você deverá seguir as instruções contidas no link abaixo:

https://react-native.rocketseat.dev/android/linux#configurando-android-studio

A página já irá abrir na parte da configuração que é necessária. 
Se este script rodou sem erros, os únicos requisitos necessários para 
seguir as instruções do link acima são:
1 - Fechar este terminal e abrir um novo;
2 - Digitar o comando studio.sh (Este comando fará com que o programa de
configuração seja do Android Studio seja inicializado).

Pronto! a partir disso você já estará apto a executar as instruçẽos 
do link acima. 

ATENÇÃO: O Script 6 realiza a instalação do KVM. O KVM é uma tecnologia específica
para ajudar na emulação de aplicativos e não é compatível com todos os sistemas.
Apenas execute o Script6.sh se durante a configuração do Android Studio um aviso
aparecer para você indicando que o seu sistema é compatível.
' >> ~/Downloads/Leia-ME.txt
#!/bin/bash
##Instalando Snaps
sudo apt-get update
sudo apt-get upgrade
sudo snap install code --classic
sudo snap install insomnia --classic
sudo snap install dbeaver-ce --classic
sudo snap install discord --classic
sudo snap install spotify --classic
sudo snap install gimp --classic


mkdir /home/$USER/Downloads/Programas
cd /home/$USER/Downloads/Programas

##Baixando .debs
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget https://github.com/egoist/devdocs-app/releases/download/v0.7.1/DevDocs_0.7.1_amd64.deb
##Instalando .debs
sudo dpkg -i *.deb

##Instalando Via apt-get
sudo apt-get update
sudo apt-get install deepin-screenshot

sudo add-apt-repository ppa:peek-developers/stable
sudo apt update
sudo apt-get install peek

##Instalando Wine
sudo dpkg --add-architecture i386
wget -O - https://dl.winehq.org/wine-builds/winehq.key | sudo apt-key add -
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main'
sudo apt install --install-recommends winehq-stable

##Instalando Git
sudo add-apt-repository ppa:git-core/ppa
sudo apt update && sudo apt install git
git config --global user.name "Geazi Oliveira" && git config --global user.email "geazioliveira@hotmail.com"

###########COnfigurações de Desenvolvimento########
##Instalando cRUL
sudo apt-get update
sudo apt install curl

##Instalando Zsh
cd /etc
sudo apt install zsh
sudo sed -i 's+/geazi:/bin/bash+/geazi:/bin/zsh+g' passwd
zsh

##Reiniciando o Sistema
sudo reboot
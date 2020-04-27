#!/bin/bash
##Instalar Plugins do ZSH
echo "=======INSTALANDO PLUGINS DO ZSH======"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"

echo "=======REINICIANDO O SISTEMA========"
sudo reboot
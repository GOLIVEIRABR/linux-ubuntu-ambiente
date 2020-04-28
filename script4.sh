#!/bin/bash
echo "========INSTALANDO PLUGINS ADICIONAIS DO ZSH========="
##Instalar Plugins adicionais do ZSH
sudo sed -i '$ a\\nzinit light zdharma/fast-syntax-highlighting\nzinit light zsh-users/zsh-autosuggestions\nzinit light zsh-users/zsh-completions' ~/.zshrc

echo "========FECHAR TERMINAL E ABRIR NOVAMENTE"
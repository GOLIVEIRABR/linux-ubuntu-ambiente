#!/bin/bash
##Instalar Plugins adicionais do ZSH
sudo sed -i '$ a\\n zinit light zdharma/fast-syntax-highlighting\nzinit light zsh-users/zsh-autosuggestions\nzinit light zsh-users/zsh-completions' .zshrc

##Reiniciando o sistema
sudo reboot
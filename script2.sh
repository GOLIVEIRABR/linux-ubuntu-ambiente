#!/bin/bash
echo "=========INSTALANDO OH MY ZSH=========="
##Instalando o Oh My Zsh
sudo apt-get update
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "=========INSTALANDO DRACULA PARA TERMINAL========"
##Instalando Drácula para terminal
sudo apt-get install dconf-cli

echo "=======INSTALANDO FONT FIRACODE==========="
##Instalando Fonte FiraCode
sudo apt-get update && sudo apt install fonts-firacode

echo "=========INSTALANDO TEMA SPACESHIP NO ZSH==========="
##Instalando tema SpaceShip no Oh My ZSH
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
cd ~/
sudo sed -i 's+ZSH_THEME="robbyrussell"+ZSH_THEME="spaceship"+g' .zshrc
sudo sed -i '$ a\\nSPACESHIP_PROMPT_ORDER=(\nuser          # Username section\ndir           # Current directory section\nhost          # Hostname section\ngit           # Git section (git_branch + git_status)\nhg            # Mercurial section (hg_branch  + hg_status)\nexec_time     # Execution time\nline_sep      # Line break\nvi_mode       # Vi-mode indicator\njobs          # Background jobs indicator\nexit_code     # Exit code section\nchar          # Prompt character\n)\nSPACESHIP_USER_SHOW=always\nSPACESHIP_PROMPT_ADD_NEWLINE=false\nSPACESHIP_CHAR_SYMBOL="❯"\nSPACESHIP_CHAR_SUFFIX=" "' .zshrc

echo "==========FECHAR TERMINAL E ABRIR NOVAMENTE=========="
#

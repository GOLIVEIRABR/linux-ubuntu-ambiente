#!/bin/bash
##Instalando cRUL
echo "=========INSTALANDO CURL========="
sudo apt-get update -y
sudo apt install curl -y

echo "========INSTALANDO SNAPS======="
##Instalando Snaps
sudo apt-get update -y
sudo apt-get upgrade -y

sudo snap install code --classic
sudo snap install insomnia --classic
sudo snap install dbeaver-ce --classic
sudo snap install discord --classic
sudo snap install spotify --classic
sudo snap install gimp --classic


mkdir /home/$USER/Downloads/Programas
cd /home/$USER/Downloads/Programas

echo "==========BAIXANDO EXE======"
##Baixando EXE
wget https://download.mql5.com/cdn/web/6400/mt5/clear5setup.exe

echo "==========BAIXANDO .DEBS========"
##Baixando .debs
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget https://github.com/egoist/devdocs-app/releases/download/v0.7.1/DevDocs_0.7.1_amd64.deb
wget https://repo.steampowered.com/steam/archive/precise/steam_latest.deb

echo "=========INSTALANDO .DEBS========"
##Instalando .debs
sudo dpkg -i *.deb

echo "===========INSTALANDO APT-GET========"
##Instalando Via apt-get
sudo apt-get update -y
sudo apt-get install deepin-screenshot -y

sudo add-apt-repository ppa:peek-developers/stable -y
sudo apt update -y
sudo apt-get install peek -y

echo "===========INSTALANDO WINE==========="
##Instalando Wine
sudo dpkg --add-architecture i386
wget -O - https://dl.winehq.org/wine-builds/winehq.key | sudo apt-key add -
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main' -y
sudo apt install --install-recommends winehq-stable -y

echo "========INSTALANDO E CONFIGURANDO GIT=========="
##Instalando Git
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt update && sudo apt install git -y
git config --global user.name "Geazi Oliveira" && git config --global user.email "geazioliveira@hotmail.com"

echo "==========CONFIGURANDO VSCODE=========="
###########COnfigurações de Desenvolvimento########
##Configurando o VSCode
mkdir -p ~/.config/Code/User/
cd ~/.config/Code/User/

if [ -e "settings.json" ]
then
    tamanho=$(wc -c settings.json | awk '{print $1}')
    if [ $tamanho -lt 10 ] 
    then
        echo '{

        "workbench.colorTheme": "Dracula",
        
        "terminal.integrated.fontSize": 14,
        
        "workbench.iconTheme": "material-icon-theme",
        
        "workbench.startupEditor": "newUntitledFile",
        
        "editor.tabSize": 2,
        
        "editor.fontSize": 14,
        
        "editor.lineHeight": 21,
        
        "editor.fontFamily": "Fira Code",
        
        "editor.fontLigatures": true,
        
        "explorer.compactFolders": false,
        
        "editor.renderLineHighlight": "gutter",
        
        "workbench.editor.labelFormat": "short",
        
        "extensions.ignoreRecommendations": true,
        
        "javascript.updateImportsOnFileMove.enabled": "never",
        
        "typescript.updateImportsOnFileMove.enabled": "never",
        
        "breadcrumbs.enabled": true,
        
        "editor.parameterHints.enabled": true,
        
        "explorer.confirmDragAndDrop": false,
        
        "explorer.confirmDelete": false,
        
        "editor.rulers": [ 80, 120],
        
        "emmet.syntaxProfiles":{ "javascript": "jsx"},
        
        "emmet.includeLanguages": { "javascript": "javascriptreact"},
        
        "[javascript]": {
        
        "editor.codeActionsOnSave": {
        
        "source.fixAll.eslint" : true,
        }
        },
        
        "[javascriptreact]": {
        
        "editor.codeActionsOnSave": {
        
        "source.fixAll.eslint": true,
        
        }
        
        },
        
        "[typescript]": {
        
        "editor.codeActionsOnSave": {
        
        "source.fixAll.eslint": true,
        
        }
        
        },
        
        "[typescriptreact]": {
        
        "editor.codeActionsOnSave": {
        
        "source.fixAll.eslint": true,
        
        }    
        }
        }' > settings.json
        cd ~/Downloads
        echo '===========VSCODE===========
Atenção: O arquivo de configuração do VS Code já existia, mas como não possuia configurações relevantes, foi sobrescrito com as configurações padrão.' > Leia-ME.txt
    else
        cd ~/Downloads
        echo '===========VSCODE===========
Atenção: O arquivo de configuração do VS Code já possuia parâmetros relevantes. Nenhum parâmetro foi substituído.' > Leia-ME.txt
    fi
else
echo '{

    "workbench.colorTheme": "Dracula",
    
    "terminal.integrated.fontSize": 14,
    
    "workbench.iconTheme": "material-icon-theme",
    
    "workbench.startupEditor": "newUntitledFile",
    
    "editor.tabSize": 2,
    
    "editor.fontSize": 14,
    
    "editor.lineHeight": 21,
    
    "editor.fontFamily": "Fira Code",
    
    "editor.fontLigatures": true,
    
    "explorer.compactFolders": false,
    
    "editor.renderLineHighlight": "gutter",
    
    "workbench.editor.labelFormat": "short",
    
    "extensions.ignoreRecommendations": true,
    
    "javascript.updateImportsOnFileMove.enabled": "never",
    
    "typescript.updateImportsOnFileMove.enabled": "never",
    
    "breadcrumbs.enabled": true,
    
    "editor.parameterHints.enabled": true,
    
    "explorer.confirmDragAndDrop": false,
    
    "explorer.confirmDelete": false,
    
    "editor.rulers": [ 80, 120],
    
    "emmet.syntaxProfiles":{ "javascript": "jsx"},
    
    "emmet.includeLanguages": { "javascript": "javascriptreact"},
    
    "[javascript]": {
    
    "editor.codeActionsOnSave": {
    
    "source.fixAll.eslint" : true,
    }
    },
    
    "[javascriptreact]": {
    
    "editor.codeActionsOnSave": {
    
    "source.fixAll.eslint": true,
    
    }
    
    },
    
    "[typescript]": {
    
    "editor.codeActionsOnSave": {
    
    "source.fixAll.eslint": true,
    
    }
    
    },
    
    "[typescriptreact]": {
    
    "editor.codeActionsOnSave": {
    
    "source.fixAll.eslint": true,
    
    }    
    }
    }' > settings.json
    cd ~/Downloads
    echo '===========VSCODE===========:
Atenção: O Arquivo de configuração foi criado com as configurações padrão.' > Leia-ME.txt
fi

echo '
Instalar manualmente as seguintes extensões no VSCODE:
- Dracula Official;
- EditorConfig for VS Code;
- ESLint;
- Material Icon Theme;
- vscode-styled-components.' >> Leia-ME.txt

cd ~/


echo "============INSTALANDO ZSH============"
##Instalando Zsh
cd /etc
sudo apt install zsh -y
sudo sed -i 's+/geazi:/bin/bash+/geazi:/bin/zsh+g' passwd

echo "===========REINICIANDO SISTEMA============"
##Reiniciando o Sistema
sudo reboot
#!/bin/bash

read -s -p "entre com a senha sudo: " sudoPW

echo "Atualizando lista de pacotes e programas"
echo $sudoPW | sudo -S apt update
echo "Instalando neovim"
echo $sudoPW | sudo -S apt install -y neovim
echo "Instalando git"
echo $sudoPW | sudo -S apt install -y git
echo "Instalando HTOP"
echo $sudoPW | sudo -S apt install -y htop
echo "Instalando zsh"
echo $sudoPW | sudo -S apt install -y zsh
echo "Instalando OhmyZSH"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "Instalando zip"
echo $sudoPW | sudo -S apt install -y zip
echo "Instalando unzip"
echo $sudoPW | sudo -S apt install -y unzip
echo "Instalando sdkman"
echo curl -s "https://get.sdkman.io" | bash
echo "Instalando Google chrome"
echo "Instalando vscode"
echo "Intalando beekeeper studio"
read -p "entre com email do github: " emailgithub
echo "gerando chaves github"
ssh-keygen -t ed25519 -q -f /home/atila/.ssh/id_ed25519 -N '' -C $emailgithub
echo "coloque essa chave na sua conta do github"
cat ~/.ssh/id_ed25519.pub





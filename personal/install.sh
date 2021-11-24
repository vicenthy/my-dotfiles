#!/bin/bash
read -s -p "entre com a senha sudo: " sudoPW
echo "Atualizando lista de pacotes e programas"
echo $sudoPW | sudo -S apt update
echo "Instalando HTOP"
echo $sudoPW | sudo -S apt install -y htop
echo "Instalando zsh"
echo $sudoPW | sudo -S apt install -y zsh 



echo "Instalando Google chrome"
echo "Instalando vscode"
echo "Intalando beekeeper studio"

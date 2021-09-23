#!/usr/bin/env bash
# file: setup-ubuntu-laptop.sh
# description: Install applications for an Ubuntu Laptop.

AUTO_INSTALL=-y
CURRENT_DIR=${PWD}
WORKING_DIR=~/Downloads

cd "${WORKING_DIR}"

# TODO: nvm
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 

# TODO: npm
# TODO: npx

sudo apt update "${AUTO_INSTALL}"
sudo apt upgrade "${AUTO_INSTALL}"

sudo apt install software-properties-common "${AUTO_INSTALL}"
sudo apt install apt-transport-https "${AUTO_INSTALL}"
sudo apt install ca-certificates "${AUTO_INSTALL}"
sudo apt install curl "${AUTO_INSTALL}"
sudo apt install gnupg "${AUTO_INSTALL}"
sudo apt install lsb-release "${AUTO_INSTALL}"
sudo apt install wget "${AUTO_INSTALL}"

sudo apt-get install gparted "${AUTO_INSTALL}"
sudo apt-get install gnome-disk-utility "${AUTO_INSTALL}"
# If HFS+ drive format  (used in MacOS) is needed
sudo apt-get install hfsprogs "${AUTO_INSTALL}"

# VS Code
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"

# Sublime Text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

# Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/sha\re/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Syncthing
curl -s https://syncthing.net/release-key.txt | sudo apt-key add -
echo "deb https://apt.syncthing.net/ syncthing release" > /etc/apt/sources.list.d/syncthing.list

# SBT (Scala)
echo "deb https://repo.scala-sbt.org/scalasbt/debian all main" | sudo tee /etc/apt/sources.list.d/sbt.list
echo "deb https://repo.scala-sbt.org/scalasbt/debian /" | sudo tee /etc/apt/sources.list.d/sbt_old.list
curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" | sudo apt-key add
sudo apt-get update

sudo apt install gparted "${AUTO_INSTALL}"
sudo apt install gnome-disk-utility "${AUTO_INSTALL}"
sudo apt install code "${AUTO_INSTALL}"
sudo apt install sublime-text "${AUTO_INSTALL}"
sudo apt install git "${AUTO_INSTALL}"
sudo apt install libreoffice "${AUTO_INSTALL}"
sudo apt install syncthing "${AUTO_INSTALL}"
sudo apt install sbt "${AUTO_INSTALL}"
sudo apt install yarn "${AUTO_INSTALL}"
sudo apt install trash-cli "${AUTO_INSTALL}"

# Docker
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo docker run hello-world

# Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# GitKracken
wget "https://release.gitkraken.com/linux/gitkraken-amd64.deb"
sudo apt install "./gitkraken-amd64.deb" "${AUTO_INSTALL}"

# Google Chrome
wget "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
sudo apt install "./google-chrome-stable_current_amd64.deb" "${AUTO_INSTALL}"

# OBS
sudo apt install ffmpeg "${AUTO_INSTALL}"
sudo apt install v4l2loopback-dkms "${AUTO_INSTALL}"

sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt install obs-studio 

sudo snap install vlc


cd ${CURRENT_DIR}
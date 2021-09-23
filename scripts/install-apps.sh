#!/usr/bin/env bash
# file: install-apps.sh
# description:

set -x
trap read debug

# TODO: replace with multi-platform setup script i.e. Windows, MacOS, Linux
# TODO: allow configuration

brew upgrade

xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#brew doctor
#brew tap caskroom/cask
#brew tap homebrew/cask-versions
#brew tap homebrew/cask-drivers
#brew tap adobe-marketing-cloud/brews
#brew cask
#brew cask install cakebrew

## Homebrew Taps
brew tap adoptopenjdk/openjdk


## Homebrew
brew install bash
brew install tmux
brew install wget
brew install trash
brew install jq
### Git
brew install git
brew install git-subrepo
brew install git-lfs
### Java
brew install jenv
brew install maven
brew install gradle
### JavaScript
brew install node
brew install nvm
### Python
brew install pyenv
brew install poetry
#brew install glances
#brew install pwgen

## Homebrew Cask
brew install --cask iterm2
brew install --cask sublime-text
brew install --cask intellij-idea-ce
brew install --cask gitkraken

#brew cask install virtualbox
#brew cask install vagrant
#brew cask install vagrant-manager
brew install --cask docker
#brew cask install docker-toolbox
brew install --cask miniconda

brew install --cask homebrew/cask-versions/adoptopenjdk8
brew install --cask adoptopenjdk11


brew install --cask firefox
brew install --cask logitech-options
brew install --cask synergy

#brew install --cask anki
#brew install --cask github
#brew cask install java8


#brew cask install evernote
#brew cask install brackets

#brew cask install eclipse-java



#brew cask install adobe-creative-cloud
#brew cask install displaylink


#brew cask install airfoil


#npm install -g yarn
#npm install -g aemsync
#brew install adobe-marketing-cloud/brews/filevault
#brew cask install mamp
#brew cask install toggl-beta

#brew install perl
#brew install wsk
#brew install wskdeploy
#brew cask install ngrok

# Vagrant
#vagrant box add hashicorp/vagrant-share
#vagrant box add xenial64 ubuntu/xenial64
#vagrant plugin install vagrant-share
#vagrant plugin uninstall vagrant-vmware-desktop
#vagrant plugin license vagrant-vmware-desktop ~/.licenses/vmware.lic

## AEM Desktop
### TODO: replace with with brew
#hdiutil attach http://download.macromedia.com/aem-assets-companion-app/aem-desktop-osx-1.10.0.3.dmg
#sudo cp -R /Volumes/Adobe\ Experience\ Manager\ Desktop/Adobe\ Experience\ Manager\ Desktop.app/ /Applications/
#hdiutil unmount /Volumes/Adobe\ Experience\ Manager\ Desktop/

## SideSync
#hdiutil attach http://downloadcenter.samsung.com/content/SW/201704/20170406134336838/SideSync_4.7.5.17042_1.dmg
#open /Volumes/SideSync

## Review Mac-CLI
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/guarinogabriel/mac-cli/master/mac-cli/tools/install)"

## Lazybones
#curl -s "https://get.sdkman.io" | bash
#source ~/.sdkman/bin/sdkman-init.sh
#sdk install lazybones

## Java
# jenv add ${JAVA_11_HOME}



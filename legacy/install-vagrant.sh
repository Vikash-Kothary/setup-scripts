#!/bin/bash
# file: install.sh

sudo apt remove virtualbox virtualbox-*

wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib"
sudo apt -qq update && sudo apt install -y virtualbox-6.0

sudo apt install vagrant
vagrant --version # Vagrant 2.0.2

# https://github.com/gosuri/vagrant-env
vagrant plugin install vagrant-env
# https://github.com/tknerr/vagrant-managed-servers
vagrant plugin install vagrant-managed-servers
# https://github.com/mitchellh/vagrant-google
vagrant plugin install vagrant-google
# https://github.com/mitchellh/vagrant-aws
vagrant plugin install vagrant-aws
# https://github.com/Azure/vagrant-azure
vagrant plugin install vagrant-azure
# https://github.com/devopsgroup-io/vagrant-hostmanager
vagrant plugin install vagrant-hostmanager

# https://github.com/heroku/heroku-container-registry
heroku plugins:install @heroku-cli/plugin-container-registry
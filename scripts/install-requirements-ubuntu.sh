#!/bin/bash
# install-ansible-ubuntu.sh

sudo apt-get -qq update
sudo apt-get install -y software-properties-common
sudo apt-add-repository -y --update ppa:ansible/ansible
sudo apt-get install -y ansible
#!/bin/bash
# install.sh

if ! [ -x $(command -v ansible) ]; then
  sudo apt-get install -y software-properties-common
  sudo apt-add-repository -y ppa:ansible/ansible
  sudo apt-get -qq update
  sudo apt-get install -y ansible;
fi
ansible-playbook -i "localhost," -c local provision.yml --ask-become-pass

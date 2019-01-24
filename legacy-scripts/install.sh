#!/bin/bash
# install.sh

if ! [ -x $(command -v ansible) ]; then
  sudo apt-get install -y software-properties-common
  sudo apt-add-repository -y ppa:ansible/ansible
  sudo apt-get -qq update
  sudo apt-get install -y ansible;
fi
if ! [ -x $(command -v docker-compose) ]; then
	wget -O - https://bit.ly/docker-install | bash

	sudo groupadd docker
	sudo gpasswd -a ${USER} docker
	sudo service docker restart
	newgrp docker
fi
ansible-playbook -i "localhost," -c local setup-scripts/provision.yml --ask-become-pass
#docker-compose up -d
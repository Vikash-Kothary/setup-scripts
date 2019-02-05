#!/bin/bash
# install-ansible-mac.sh

xcode-select --install
easy_install --user pip
#printf 'if [ -f ~/.bashrc ]; then\n  source ~/.bashrc\nfi\n' >> $HOME/.profile
#printf 'export PATH=$PATH:$HOME/Library/Python/2.7/bin\n' >> $HOME/.bashrc
#source $HOME/.profile
pip install --user --upgrade ansible
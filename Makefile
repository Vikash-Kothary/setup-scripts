#!make
#@ Makefile for Setup Scripts

-include .env
export

#@ Commands:
.PHONY: install
PLAYBOOK_CONTEXT=playbook

#@ - help: Show all commands.
help:
	@fgrep -h "#@ " $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/#@ //'

#@ - requirements: Download role requirements
requirements:
	@echo 'Download requirements roles'
	@cd ${PLAYBOOK_CONTEXT}/ && \
	ansible-galaxy install -r requirements.yml


#@ - install: Install applications
install:
	@echo 'Install applications on a Laptop'
	@cd ${PLAYBOOK_CONTEXT}/ && \
	ansible-playbook main.yml \
		-i inventory \
		--tags "install" \
		--ask-become-pass

#@ - uninstall: Uninstall applications
uninstall:
	@echo 'Uninstall applications on a Laptop'
	@cd ${PLAYBOOK_CONTEXT}/ && \
	ansible-playbook main.yml \
		-i inventory \
		--tags "uninstall" \
		--ask-become-pass

#@ - reinstall: Reinstall applications
reinstall:
	@echo 'Reinstall applications on a Laptop'
	@cd ${PLAYBOOK_CONTEXT}/ && \
	ansible-playbook main.yml \
		-i inventory \
		--tags "uninstall, install" \
		--ask-become-pass

clean:
	trash ${PLAYBOOK_CONTEXT}/main.retry

# requirements-ubuntu:
# 	@echo "Install requirements on Ubuntu"
# 	sudo apt-get -qq update
# 	sudo apt-get install -y software-properties-common
# 	sudo apt-add-repository -y --update ppa:ansible/ansible
# 	sudo apt-get install -y ansible

# requirements-windows:
# 	@echo "Install requirements on Windows"
# 	@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

# requirements-macos:
# 	@echo "Install requirements on MacOS"
# 	xcode-select --install
# 	easy_install --user pip
# 	printf 'if [ -f ~/.bashrc ]; then\n  source ~/.bashrc\nfi\n' >> $HOME/.profile
# 	printf 'export PATH=$PATH:$HOME/Library/Python/2.7/bin\n' >> $HOME/.bashrc
# 	source $HOME/.profile
# 	pip install --user --upgrade ansible
.PHONY: install

require-ansible:
	@echo 'Install requirements'
	

install:
	@echo 'Install applications'
	ansible-playbook -i "localhost," -c local main.yml --ask-become-pass

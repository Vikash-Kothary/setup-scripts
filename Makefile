.PHONY: install

require-ansible:
	@echo 'Install requirements'
	

install:
	@echo 'Install applications'
	ansible-playbook -i "localhost," -c local provision.yml --ask-become-pass

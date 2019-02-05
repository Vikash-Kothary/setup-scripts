ROOT=setup-scripts

.PHONY: install

requirements:
	@echo 'Install requirements'
	
build:
	@echo 'Install required roles'
	cd $(ROOT) && ansible-galaxy install -r requirements.yml --ignore-errors

install:
	@echo 'Install applications'
	#ansible-playbook -i "localhost," -c local provision.yml --ask-become-pass
	
	cd $(ROOT) && ansible-playbook main.yml -i inventory -K --ask-become-pass

custom-install:
	@echo 'Custom installation'
	cd $(ROOT) && ansible-playbook main.yml -i inventory -K --tags "dotfiles,macos"

lint:
	cd $(ROOT) && ansible-playbook main.yml --syntax-check
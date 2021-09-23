#!/usr/bin/env bash
# file: ansible-install.sh
# description:

ANSIBLE_PLAYBOOK_FILE=playbooks/vikashkothary.laptop/main.yml
ANSIBLE_INVENTORY_FILE=playbooks/vikashkothary.laptop/inventory

ansible-playbook ${ANSIBLE_PLAYBOOK_FILE} \
	-i ${ANSIBLE_INVENTORY_FILE} \
	--tags "uninstall, install" \
	--ask-become-pass
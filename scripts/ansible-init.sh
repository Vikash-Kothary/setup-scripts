#!/usr/bin/env bash
# file: ansible-init.sh
# description: Download requirements roles.

ANSIBLE_REQUIREMENTS_FILE=playbooks/vikashkothary.laptop/requirements.yml

ansible-galaxy install -r ${ANSIBLE_REQUIREMENTS_FILE}
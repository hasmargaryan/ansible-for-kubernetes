#!/bin/bash
#
# Tests for cluster-local-vms playbook.
set -e

cd cluster-local-vms

# Install Ansible and required dependencies.
pip install ansible ansible-lint

# Install requirements.
ansible-galaxy install -r requirements.yml

# Lint the Cluster playbook.
ansible-lint main.yml

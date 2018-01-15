#!/usr/bin/env bash

set -euo pipefail

REPO=https://github.com/tsutsarin/ansible-desktop
DIR=~/.ansible

sudo apt install -y git
sudo easy_install pip
sudo pip install ansible

git clone ${REPO} ${DIR}
cd ${DIR}
ansible-playbook -i hosts playbook.yml -K


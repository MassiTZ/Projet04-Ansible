#!/bin/bash

#install ansible
sudo apt update
sudo apt install -y software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install -y ansible

cat >> /etc/ansible/hosts <<EOF
[master]
192.168.56.31

[worker]
192.168.56.32
192.168.56.33
EOF






#!/bin/bash

IP=$(hostname -I | awk '{print $2}')

sed -e "s/^.*${HOSTNAME}.*/${IP} ${HOSTNAME} ${HOSTNAME}.local/" -i /etc/hosts

cat >> /etc/hosts <<EOF
192.168.56.30 ansible
192.168.56.31 vmw01
192.168.56.32 vmw02
192.168.56.33 vmw03
EOF


#!/bin/bash

echo "192.168.100.10 server1" >> /etc/hosts
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
service sshd restart
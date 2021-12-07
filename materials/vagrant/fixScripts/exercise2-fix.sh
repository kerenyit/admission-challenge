#!/bin/bash

sed '/^127\.0\.0\.1[[:space:]]/d' /etc/hosts > /etc/hosts.new
cat /etc/hosts.new > /etc/hosts
rm /etc/hosts.new
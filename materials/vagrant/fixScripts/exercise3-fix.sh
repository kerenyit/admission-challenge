#!/bin/bash

sed -i 's/Require all denied/Require all granted/g' /etc/apache2/sites-enabled/000-default.conf

service apache2 restart
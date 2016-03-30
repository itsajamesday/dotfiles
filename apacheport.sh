#!/bin/bash
echo Please enter port number
read port
sed -i '5s/.*/Listen !port/' /etc/apache2/ports.conf
sed -i '1s/.*/<VirtualHost *:!port>/' /etc/apache2/sites-available/000-default.conf
systemctl restart apache2

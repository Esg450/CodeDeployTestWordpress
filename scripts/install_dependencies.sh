#!/bin/sh
yum install -y httpd
systemctl enable httpd

amazon-linux-extras install php7.2 -y
yum install mysql php-cli php-cgi php-gd -y

chown -R apache:apache /var/www
chmod -R g+rwx /var/www
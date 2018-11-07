#!/bin/sh
yum install -y httpd

amazon-linux-extras install php7.2 -y
yum install mysql php-cli php-cgi php-gd -y
systemctl restart httpd

chown -R apache:apache /var/www
chmod -R g+rwx /var/www
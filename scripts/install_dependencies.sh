#!/bin/sh
yum update -y

yum install ruby -y
wget https://aws-codedeploy-us-east-1.s3.amazonaws.com/latest/install
chmod +x ./install
./install auto

yum install -y httpd
systemctl start httpd
systemctl enable httpd

amazon-linux-extras install php7.2
yum install mysql php-cli php-cgi php-gd -y

chown -R apache:apache /var/www
chmod -R g+rwx /var/www
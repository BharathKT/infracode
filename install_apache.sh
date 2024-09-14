#!/bin/bash

sudo yum update -y
sudo yum install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd
curl www.google.com > /tmp/index.html
cp /tmp/index.html /var/www/html/index.html
sudo systemctl restart httpd
#echo "Hello World from $(hostname -f)" > /var/www/html/index.html

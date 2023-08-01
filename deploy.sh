#!/bin/bash


sudo apt-get update
sudo apt-get install -y apache2 mysql-server php libapache2-mod-php php-mysql


sudo systemctl start apache2
sudo systemctl start mysql


sudo systemctl enable apache2
sudo systemctl enable mysql

git clone https://github.com/yashp119/hub_task.git /var/www/html


sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 755 /var/www/html

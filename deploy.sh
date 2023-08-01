#!/bin/bash

# Install Apache, MySQL, PHP
sudo apt-get update
sudo apt-get install -y apache2 mysql-server php libapache2-mod-php php-mysql

# Start Apache and MySQL services
sudo systemctl start apache2
sudo systemctl start mysql

# Enable Apache and MySQL to start on boot
sudo systemctl enable apache2
sudo systemctl enable mysql

# Clone or copy your PHP application code to the Apache document root
# Replace "your-php-app-repo-url" with your actual repository URL.
git clone https://github.com/yashp119/hub_task.git /var/www/html

# Set appropriate permissions for Apache
sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 755 /var/www/html

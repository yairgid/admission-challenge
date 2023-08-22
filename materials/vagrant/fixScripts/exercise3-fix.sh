#!/bin/bash
#add fix to exercise3 here
#http://192.168.60.10
#
#You don't have permission to access this resource.
#Apache/2.4.41 (Ubuntu) Server at 192.168.60.10 Port 80
#
#thre is no permition to access the file
#
sudo sed -i 's/Require all denied/Require all granted/' /etc/apache2/apache2.conf
sudo sed -i 's/Require all denied/Require all granted/' /etc/apache2/sites-available/000-default.conf
cd /var/www
sudo find . -type d -exec chmod 755 {} \;
sudo find . -type f -exec chmod 644 {} \;
sudo chown -R /var/www

sudo service apache2 restart 
#
#
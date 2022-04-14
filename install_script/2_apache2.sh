#apache2 setup
sudo apt install apache2 -y
sudo ufw app list
sudo ufw allow 'Apache'
sudo ufw status
sudo sed -i 's/APACHE_RUN_USER=www-data/APACHE_RUN_USER=phuc/g' /etc/apache2/envvars
sudo sed -i 's/APACHE_RUN_GROUP=www-data/APACHE_RUN_GROUP=phuc/g' /etc/apache2/envvars
sudo service apache2 stop
sudo a2enmod headers
sudo a2enmod rewrite
sudo service aspache2 start
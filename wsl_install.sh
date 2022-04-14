#docker install
sudo groupadd docker
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker 
apt-cache policy docker-ce
sudo apt install docker-ce -y
sudo chmod 666 /var/run/docker.sock
sudo service docker start

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
#composer install
sudo apt install composer -y

#php7 setup
sudo apt-get install software-properties-common -y
sudo add-apt-repository ppa:ondrej/php -y
sudo apt-get update -y
sudo apt-get install php7.2 php7.2-mysql php7.2-bcmath php7.2-xml php7.2-mbstring php7.2-curl php7.2-intl libapache2-mod-php7.2 libapache2-mod-fcgid php7.2-gd php7.2-soap php7.2-zip -y
sudo apt-get install php7.4 php7.4-mysql php7.4-bcmath php7.4-xml php7.4-mbstring php7.4-curl php7.4-intl libapache2-mod-php7.4 libapache2-mod-fcgid php7.4-gd php7.4-soap php7.4-zip -y
sudo apt-get install php8.1 php8.1-mysql php8.1-bcmath php8.1-xml php8.1-mbstring php8.1-curl php8.1-intl libapache2-mod-php8.1 libapache2-mod-fcgid php8.1-gd php8.1-soap php8.1-zip -y

#install phpize
sudo apt install php7.4-dev -y
sudo apt install php7.2-dev -y
sudo update-alternatives --set phpize /usr/bin/phpize7.2
#install pecl
sudo apt install php-pear -y
sudo pecl channel-update pecl.php.net
#install xdebug
sudo apt install php7.2-xdebug -y
sudo apt install php7.4-xdebug -y

#configure xdebug
echo "xdebug.mode=debug" | sudo tee -a /etc/php/7.2/mods-available/xdebug.ini
echo "xdebug.client_host=192.168.1.68" | sudo tee -a /etc/php/7.2/mods-available/xdebug.ini
echo "xdebug.client_port=9003" | sudo tee -a /etc/php/7.2/mods-available/xdebug.ini
echo "xdebug.start_with_request=yes" | sudo tee -a /etc/php/7.2/mods-available/xdebug.ini
echo "xdebug.discover_client_host=false" | sudo tee -a /etc/php/7.2/mods-available/xdebug.ini
sudo cp /etc/php/7.2/mods-available/xdebug.ini /etc/php/7.2/mods-available/xdebug.ini.enable
sudo touch /etc/php/7.2/mods-available/xdebug.ini.disable
sudo unlink /etc/php/7.2/cli/conf.d/20-xdebug.ini
sudo unlink /etc/php/7.2/apache2/conf.d/20-xdebug.ini
sudo ln -s /etc/php/7.2/mods-available/xdebug.ini /etc/php/7.2/cli/conf.d/20-xdebug.ini
sudo ln -s /etc/php/7.2/mods-available/xdebug.ini /etc/php/7.2/apache2/conf.d/20-xdebug.ini

echo "xdebug.mode=debug" | sudo tee -a /etc/php/7.4/mods-available/xdebug.ini
echo "xdebug.client_host=192.168.1.68" | sudo tee -a /etc/php/7.4/mods-available/xdebug.ini
echo "xdebug.client_port=9003" | sudo tee -a /etc/php/7.4/mods-available/xdebug.ini
echo "xdebug.start_with_request=yes" | sudo tee -a /etc/php/7.4/mods-available/xdebug.ini
echo "xdebug.discover_client_host=false" | sudo tee -a /etc/php/7.4/mods-available/xdebug.ini
sudo cp /etc/php/7.4/mods-available/xdebug.ini /etc/php/7.4/mods-available/xdebug.ini.enable
sudo touch /etc/php/7.4/mods-available/xdebug.ini.disable
sudo unlink /etc/php/7.4/cli/conf.d/20-xdebug.ini
sudo unlink /etc/php/7.4/apache2/conf.d/20-xdebug.ini
sudo ln -s /etc/php/7.4/mods-available/xdebug.ini /etc/php/7.4/cli/conf.d/20-xdebug.ini
sudo ln -s /etc/php/7.4/mods-available/xdebug.ini /etc/php/7.4/apache2/conf.d/20-xdebug.ini


echo "xdebug.mode=debug" | sudo tee -a /etc/php/8.1/mods-available/xdebug.ini
echo "xdebug.client_host=192.168.1.68" | sudo tee -a /etc/php/8.1/mods-available/xdebug.ini
echo "xdebug.client_port=9003" | sudo tee -a /etc/php/8.1/mods-available/xdebug.ini
echo "xdebug.start_with_request=yes" | sudo tee -a /etc/php/8.1/mods-available/xdebug.ini
echo "xdebug.discover_client_host=false" | sudo tee -a /etc/php/8.1/mods-available/xdebug.ini
sudo cp /etc/php/8.1/mods-available/xdebug.ini /etc/php/8.1/mods-available/xdebug.ini.enable
sudo touch /etc/php/8.1/mods-available/xdebug.ini.disable
sudo unlink /etc/php/8.1/cli/conf.d/20-xdebug.ini
sudo unlink /etc/php/8.1/apache2/conf.d/20-xdebug.ini
sudo ln -s /etc/php/8.1/mods-available/xdebug.ini /etc/php/8.1/cli/conf.d/20-xdebug.ini
sudo ln -s /etc/php/8.1/mods-available/xdebug.ini /etc/php/8.1/apache2/conf.d/20-xdebug.ini

#install node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
bash
nvm install 16

#install yarn

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install yarn
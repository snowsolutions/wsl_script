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
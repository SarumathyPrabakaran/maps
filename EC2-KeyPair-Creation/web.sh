#!/bin/bash

sudo apt-get update

sudo apt-get install -y wget apache2
sudo apt install unzip

sudo systemctl start apache2
sudo systemctl enable apache2

wget https://www.tooplate.com/zip-templates/2117_infinite_loop.zip

unzip -o 2117_infinite_loop.zip

sudo cp -r 2117_infinite_loop/* /var/www/html/
sudo systemctl restart apache2

# Check for any errors during package installation
if [ $? -eq 0 ]; then
  echo "Script executed successfully"
else
  echo "Error: There was a problem with package installation"
  sudo apt-get purge apache2*
  sudo rm -rf /etc/apache2
  sudo apt-get install apache2
  sudo cp -r 2117_infinite_loop/* /var/www/html/
  sudo systemctl restart apache2
fi


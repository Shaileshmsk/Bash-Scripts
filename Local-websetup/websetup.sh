#!/bin/bash

# Install Dependencies
echo "###############################"
echo "Installing packages."
echo "###############################"

sudo yum install wget unzip httpd -y > /dev/null
echo

# Start & Enable Service
echo "###############################"
echo "Start and Enable httpd service."
echo "###############################"

sudo systemctl start httpd
sudo systemctl enable httpd
echo 

#Creating Temp Directory
echo "###############################"
echo "Starting Artifact Deployment"
echo "###############################"

mkdir -p /tmp/webfiles	
cd /tmp/webfiles 
echo 

wget https://www.tooplate.com/zip-templates/2129_crispy_kitchen.zip > /dev/null
unzip 2129_crispy_kitchen.zip > /dev/null

sudo cp -r 2129_crispy_kitchen/* /var/www/html/

echo 

# Bounce service
echo "###############################"
echo "Restarting HTTPD service."
echo "###############################"

systemctl restart httpd
echo

# Clean Up
echo "###############################"
echo "Removing temporary files."
echo "###############################"

rm -rf /tmp/webfiles
echo

sudo systemctl status httpd
ls /var/www/html/

#!/bin/bash

# Variable Declaration
PACKAGE="httpd wget unzip"
SVC="httpd"
URL=" https://www.tooplate.com/zip-templates/2129_crispy_kitchen.zip"
ART_NAME="2129_crispy_kitchen"
TEMPDIR="/tmp/webfiles"


# Install Dependencies
echo "###############################"
echo "Installing packages."
echo "###############################"

sudo yum install $PACKAGE -y > /dev/null
echo

# Start & Enable Service
echo "###############################"
echo "Start and Enable httpd service."
echo "###############################"

sudo systemctl start $SVC
sudo systemctl enable $SVC
echo 

#Creating Temp Directory
echo "###############################"
echo "Starting Artifact Deployment"
echo "###############################"

mkdir -p $TEMPDIR
cd $TEMPDIR
echo 

wget $URL > /dev/null
unzip $ART_NAME.zip > /dev/null

sudo cp -r $ART_NAME/* /var/www/html/

echo 

# Bounce service
echo "###############################"
echo "Restarting HTTPD service."
echo "###############################"

systemctl restart $SVC
echo

# Clean Up
echo "###############################"
echo "Removing temporary files."
echo "###############################"

rm -rf $TEMPDIR
echo

sudo systemctl status $SVC
ls /var/www/html/

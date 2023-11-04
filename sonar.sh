#!/bin/bash

echo "Downloading java 11 for starting sonar-scanner..."
sudo apt update
sudo apt install openjdk-11-jdk

echo "java 11 download completed."

VERSION="5.0.1.3006"
FILENAME="sonar-scanner-cli-$VERSION-linux.zip"

cd /tmp || exit

echo "Downloading sonar-scanner $VERSION..."
if [ -f "/tmp/$FILENAME" ]; then
    sudo rm "/tmp/$FILENAME"
fi

wget -q "https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/$FILENAME"
echo "Download completed."

echo "Unzipping downloaded file..."
unzip "$FILENAME"
echo "Unzip completed."
rm "$FILENAME"

echo "Installing to /opt..."
if [ -d "/var/opt/sonar-scanner-$VERSION" ]; then
    sudo rm -rf "/var/opt/sonar-scanner-$VERSION"
fi

sudo mv "sonar-scanner-$VERSION-linux" "/var/opt/sonar-scanner-$VERSION"
sudo ln -s /var/opt/sonar-scanner-$VERSION/bin/sonar-scanner /usr/bin/sonar
echo "Sonar Scanner $VERSION installed in /var/opt/sonar-scanner-$VERSION."

echo "to use sonar-scanner type the command sonar"

#! /bin/bash

echo "+ Start $0"

echo "> Update & upgrade ubuntu packages"
sudo apt update && sudo apt upgrade -y

echo "> Install Java"
sudo apt-get install -y openjdk-8-jdk maven
wget https://services.gradle.org/distributions/gradle-2.12-bin.zip -P /tmp --quiet
sudo unzip -q /tmp/gradle-2.12-bin.zip -d /opt && rm /tmp/gradle-2.12-bin.zip
sudo ln -s /opt/gradle-2.12/bin/gradle /usr/bin

echo "+ End $0"

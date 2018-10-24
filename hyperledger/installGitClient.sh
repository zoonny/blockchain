#! /bin/bash

echo "+ Start $0"

echo "> Update & upgrade ubuntu packages"
sudo apt update && sudo apt upgrade -y

echo "> Install git client"
sudo apt-get install git -y

echo "+ End $0"

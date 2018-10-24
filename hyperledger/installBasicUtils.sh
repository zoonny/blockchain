#! /bin/bash

echo "+ Start $0"

echo "> Update & upgrade ubuntu packages"
sudo apt update && sudo apt upgrade -y

echo "> Install some basic utilities"
sudo apt-get install -y build-essential make curl unzip g++ libtool

echo "+ End $0"

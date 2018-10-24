#! /bin/bash

./installBasicUtils.sh
sleep 3

./installGitClient.sh
sleep 3

./installGo.sh
sleep 3

./installNodeJS.sh
sleep 3

./installJava.sh
sleep 3

./installDocker.sh
sleep 3

reboot

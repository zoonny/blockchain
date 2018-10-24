#! /bin/bash

echo "+ Start $0"

function selectVersion() {
    echo "select the version of Node.JS to install."
    select var in "version 8.x" "version 6.x" "Exit"
    do
        echo ">> CHOICE[$var]"
        if [ "$var" = "version 8.x" ]
        then
            echo ">> Install Node.JS(version 8,x)"
            curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
            break
        elif [ "$var" = "version 6.x" ]
        then
            echo ">> Install Node.JS(version 6,x)"
            curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
            break
        elif [ "$var" = "Exit" ]
        then
            exit 1
        else
            echo "Invalid response..."
            selectVersion
        fi
    done
}

selectVersion

sudo apt-get install -y nodejs
sudo apt-get install -y build-essential

mkdir ~/npm-global-modules && npm config set prefix '~/npm-global-modules' && echo "export PATH=~/npm-global-modules/bin:\$PATH" >> ~/.profile && source ~/.profile

echo "+ End $0"

#! /bin/bash

echo "+ Start $0"

goFile="go1.10.linux-amd64.tar.gz"

echo "> Install go language"
cd /opt
sudo wget https://storage.googleapis.com/golang/$goFile
sudo tar -C /opt -xzf $goFile
sudo rm -rf $goFile

echo "> Create go workspace directory"
cd /opt
sudo mkdir -vp gopath/{src,pkg,bin}
sudo chown -R $(id -un):$(id -un) gopath
cd gopath/src
mkdir github.com
cd github.com
mkdir hyperledger
cd hyperledger

echo "> Setting go path"
sudo echo '
export GOPATH="/opt/gopath"
export GOROOT="/opt/go"
export PATH=$GOROOT/bin:$GOPATH/bin:$PATH' | sudo tee -a /etc/profile
source /etc/profile

echo "> Check the go lang is installed correctly"
cd /opt/gopath/src && mkdir hello
cd hello
echo 'package main
import "fmt"
func main() {
    fmt.Printf("hello, world\n")
}' > $(pwd)/hello.go

sudo apt install golang-go
go build
./hello


echo "+ End $0"

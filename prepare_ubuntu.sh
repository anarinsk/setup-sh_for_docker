#! /bin/bash

# Change to neareat and fast Ubuntu repo
sudo sed -i 's/archive.ubuntu.com/ftp.daumkakao.com/g' /etc/apt/sources.list # otherwise
sudo apt-get update
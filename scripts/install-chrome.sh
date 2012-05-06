#!/bin/bash

#Getting google repo public key
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

# Adding google repo to the supported source repositories
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

#Updating packages information
sudo apt-get update

#Installing the latest stable chrome
sudo apt-get install google-chrome-stable


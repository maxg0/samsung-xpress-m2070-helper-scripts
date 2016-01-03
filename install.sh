#!/usr/bin/env bash

sudo apt-add-repository 'deb http://www.bchemnet.com/suldr/ debian extra'
sudo wget -O - http://www.bchemnet.com/suldr/suldr.gpg | sudo apt-key add -
sudo apt-get update
sudo apt-get install suld-driver-4.01.17


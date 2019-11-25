#!/bin/bash set -ex

echo "updating..." 
sudo apt-get update && sudo apt-get upgrade

echo "installing ubuntu-restricted-extras..." sudo apt-get install ubuntu-restricted-extras

echo "installing firewall..." sudo apt-get install gufw sudo ufw enable

echo "installing gnome-tweak-tool..." sudo apt-get install gnome-tweak-tool sudo apt-get hidetopbar

echo "disabling bluetooth.service..." sudo systemctl stop bluetooth.service sudo systemctl disable bluetooth.service # systemctl list-unit-files --type=service | grep enabled

echo "installing google chrome..." wget http://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb sudo apt-get -f install /home/omuaomua/Downloads/google-chrome-stable_current_amd64.deb

... 

echo "*******  SUCESS  *******"

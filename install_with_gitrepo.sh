#!/bin/bash
sudo rm /usr/bin/zinst
## https://goody80.github.io/zinst7/zinst
curl -sL http://bit.ly/zinst- -o ./zinst
sudo cp ./zinst /usr/bin/zinst
sudo chmod 755 /usr/bin/zinst
sudo zinst self-config ip="goody80.github.io/Zinst_packages" host="goody80.github.io/Zinst_packages" dir=/data
sudo zinst i server_default_setting-1.3.2.zinst 

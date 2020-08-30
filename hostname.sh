#!/bin/bash
echo "Enter the Hostname that you want to set..?"
read hn
sudo hostname $hn
sudo echo "127.0.0.1" $hn > /etc/hosts
sudo hostnamectl

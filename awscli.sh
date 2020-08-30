#!/bin/bash

sudo apt-get update
sudo apt-get install awscli -y
version=$(aws --version)
echo "Your Installed AWS CLI version:" $version

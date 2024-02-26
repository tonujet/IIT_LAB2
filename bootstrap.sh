#! /bin/bash


echo
echo "-------------Bootstrap-------------"
sudo apt update -y
sudo apt install git -y
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source ~/.nvm/nvm.sh
nvm install 16
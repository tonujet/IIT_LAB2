#! /bin/bash
echo
echo "-------------Starting telegram server-------------"

if [ -z "$TELEGRAM_BOT_TOKEN" ]; then
    echo "TOKEN is null."
    exit 1
fi


source ~/.nvm/nvm.sh
nvm use 16
cd ~
sudo rm -rf app
mkdir app
cp -a /vagrant/. ./app/
cd app
killall node
npm i
npm run build
nohup node build/index.js &

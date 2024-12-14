#!/bin/bash
# setup.sh by Kurama250
# Github : https://github.com/Kurama250/Alert_L7_DDoS

apt update && apt upgrade -y
apt install npm nodejs zip git -y

if ! command -v node &> /dev/null; then
    echo "Node.js is not installed. Installing..."
    curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
    apt-get install -y nodejs
else
    echo "Node.js is already installed. Skipping installation."
fi

git clone https://github.com/Kurama250/Alert_L7_DDoS.git
cd Alert_L7_DDoS/
npm install axios tail

if ! command -v pm2 &> /dev/null; then
    echo "PM2 is not installed. Installing..."
    npm install pm2 -g
else
    echo "PM2 is already installed. Skipping installation."
fi

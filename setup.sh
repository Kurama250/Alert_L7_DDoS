#!/bin/bash
# setup.sh by Kurama250
# Github : https://github.com/Kurama250/Alert_L7_DDoS

apt update && apt upgrade -y
apt install npm nodejs zip -y
apt update && apt upgrade -y
apt install npm nodejs git -y
if ! command -v node &> /dev/null; then
    curl -fsSL https://deb.nodesource.com/setup_20.x | bash - &&\
    apt-get install -y nodejs -y
else
    echo "Node.js is already installed. Skipping installation."
fi
git clone https://github.com/Kurama250/Alert_L7_DDoS.git
cd Alert_L7_DDoS/
npm install axios tail
npm install pm2 -g

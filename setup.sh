#!/bin/bash
# setup.sh by Kurama250
# Github : https://github.com/Kurama250/Alert_L7_DDoS

apt update && apt upgrade -y
apt install npm nodejs zip -y
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - &&\
apt-get install -y nodejs -y
git clone https://github.com/Kurama250/Alert_L7_DDoS.git
cd Alert_L7_DDoS/
npm install axios tail
npm install pm2 -g

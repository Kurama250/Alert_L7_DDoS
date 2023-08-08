#!/bin/bash
# setup.sh by Kurama250
# Github : https://github.com/Kurama250/Alerte_DDos_L7

apt update && apt upgrade -y
apt install npm node.js zip -y
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - &&\
apt-get install -y nodejs -y
git clone https://github.com/Kurama250/Alerte_DDos_L7.git
cd Alerte_DDos_L7/
npm install axios tail
npm install pm2 -g

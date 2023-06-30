<h1 align="center">L7 ddos ​​attack detector script (Nginx)</h1>
<em><h5 align="center">(Programming Language - Node.js | Shell)</h5></em>

# Tutorial to install the bot ! For LINUX (VPS or Dedicated Server)

## 1 - on Terminal

<h5>A) Auto installer</h5>

- First, download and upload the codes to your server !

- After :

```shell script
chmod +x setup_module.sh
bash setup_module.sh
```
<h5>B) Manual installer</h5>

```shell script
apt update && apt upgrade -y
apt install npm node.js zip
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - &&\
apt-get install -y nodejs
```

```shell script
wget https://github.com/Kurama250/Alerte_DDos_L7/archive/refs/heads/main.zip
unzip main.zip
cd Alerte_DDos_L7-main/
npm install axios tail
npm install pm2 -g
```
## 2 - on Terminal

```shell script
nano index.js
```

- And you also change this line :

```js
const webhookURL = 'YOUR_WEBHOOK_LINK';
```

- To modify the number of detection requests modified this line :

```js
const threshold = 500;
```

- After doing this, press CTRL + X and you press Y and ENTER then you do the following commands !

## 3 - on Terminal

```shell script
pm2 start Alerte_L7.js --watch
```

<h1 align="center">Then it's the end you have started the bot have fun !</h1>

<h1 align="center">L7 ddos ​​attack detector script (Nginx)</h1>
<em><h5 align="center">(Programming Language - Node.js | Shell)</h5></em>

# Tutorial to install the bot ! For LINUX (VPS or Dedicated Server)

## 1 - on Terminal

<h5>A) Auto installer</h5>

- Run command :

```shell script
bash <(curl -s https://raw.githubusercontent.com/Kurama250/Alerte_DDos_L7/main/setup.sh)
```
<h5>B) Manual installer</h5>

```shell script
apt update && apt upgrade -y
apt install npm node.js git -y
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - &&\
apt-get install -y nodejs
```

```shell script
git clone https://github.com/Kurama250/Alerte_DDos_L7.git
cd Alerte_DDos_L7/
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
const threshold = 750;
```

- After doing this, press CTRL + X and you press Y and ENTER then you do the following commands !

## 3 - on Terminal

```shell script
pm2 start index.js --watch
```

- Demo : 

![alt text](https://github.com/Kurama250/Alerte_DDos_L7/blob/main/alert_ddos.png?raw=true)

<h1 align="center">Then it's the end you have started the bot have fun !</h1>

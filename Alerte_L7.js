/*
 Creator : Kurama
 Github : https://github.com/Kurama250
*/

const Tail = require('tail').Tail;
const axios = require('axios');

const logFilePath = '/var/log/nginx/access.log';
const webhookURL = 'YOUR_WEBHOOK_LINK';

const threshold = 750;
const windowSize = 10000;

let requestCount = 0;
let attackDetected = false;

async function sendDiscordMessage(embed) {
  try {
    await axios.post(webhookURL, { embeds: [embed] });
  } catch (error) {
    console.error('Error sending Discord message :', error.message);
  }
}

function handleAttackDetection() {
  if (!attackDetected) {
    attackDetected = true;
    const embed = {
      title: 'ALERT: DDoS Attack L7 Detected !',
      description: `Number of Requests: ${requestCount}`,
      color: 16711680
    };
    sendDiscordMessage(embed);
  }
}

function handleAttackMitigation() {
  attackDetected = false;
  const embed = {
    title: 'DDoS Attack Mitigated/Stopped !',
    color: 65280
  };
  sendDiscordMessage(embed);
}

const tail = new Tail(logFilePath);

tail.on('line', (line) => {
  requestCount++;

  if (requestCount >= threshold) {
    handleAttackDetection();
  }
});

tail.on('error', (error) => {
  console.error(`Error while tailing the log file : ${error}`);
});

setInterval(() => {
  if (attackDetected) {
    if (requestCount < threshold) {
      handleAttackMitigation();
    }
    requestCount = 0;
  }
}, windowSize);

console.log('Alert L7 Start !');

const fs = require("fs");
const path = require("path");
require("events").EventEmitter.defaultMaxListeners = 20;
const casual = require("casual");
const faker = require('faker');

const fileName = "./actualData-Locations-small.json";
// const fileName = "./actualData-Locations-Massive-10million.json";

function randomNumber(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min + 1)) + min;
}

const writable = fs.createWriteStream(fileName);
const drainProcess = () =>
  new Promise((resolve) => {
    writable.on("drain", resolve);
  });
console.time("lap");
console.time("timer");
let amountOfReviews = 100;

async function safelyWriteLocations(dataArray) {
  writable.write("[");
  for (let i = 1; i <= amountOfReviews; i++) {
    let curData = {};
    curData.id = i;
    curData.name = faker.commerce.department();
    const shouldContinue = writable.write(JSON.stringify(curData));
    if (i < amountOfReviews) {
      writable.write(",");
    }
    if (i === amountOfReviews) {
      let endtime = console.timeEnd("timer");
    }
    if (!shouldContinue) {
      await drainProcess();
    }
  }
  await writable.end("]");
  console.log('were done here');
}
safelyWriteLocations();

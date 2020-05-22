const fs = require('fs');
const path = require('path');
const faker = require('faker');

const writable = fs.createWriteStream("./jsontestarrayed.json");
const drainProcess = () => new Promise((resolve) => {
  writable.on("drain", resolve);
});
console.time('lap');
console.time("timer");
let end = 10000;
async function safelyWrite(dataArray) {
  writable.write('[');
  for (let i = 0; i <= 10; i++) {
    let jsonFakeData = {
      id: i,
      city: faker.address.city(),
      fakeDataOne: faker.commerce.color(),
      fakeDataTwi: faker.company.bsAdjective()
    }
    if (i % 1000 === 0) {
      console.timeLog('lap');
    }
    const shouldContinue = writable.write(JSON.stringify(jsonFakeData));
    if (i < end) {
      writable.write(',');
    }
    if (!shouldContinue) {
      await drainProcess();
    }
  }
  writable.end(']');
}
let endtime = console.timeEnd("timer");

safelyWrite();

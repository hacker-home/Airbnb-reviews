const fs = require("fs");
const path = require("path");
const faker = require("faker");
require("events").EventEmitter.defaultMaxListeners = 20;

const writable = fs.createWriteStream("./smalljsontestarrayed.json");
const drainProcess = () =>
  new Promise((resolve) => {
    writable.on("drain", resolve);
  });
console.time("lap");
console.time("timer");
let end = 20;
async function safelyWrite(dataArray) {
  writable.write("[");
  for (let i = 0; i <= end; i++) {
    let jsonFakeData = {
      id: i,
      city: faker.address.city(),
      fakeDataOne: faker.commerce.color(),
      fakeDataTwi: faker.company.bsAdjective(),
    };
    const shouldContinue = writable.write(JSON.stringify(jsonFakeData));
    if (i < end) {
      writable.write(",");
    }
    if (i === end) {
      let endtime = console.timeEnd("timer");
    }
    if (i % 100000 === 0) {
      console.timeLog("lap");
    }
    if (!shouldContinue) {
      await drainProcess();
    }
  }
  writable.end("]");
}
safelyWrite();

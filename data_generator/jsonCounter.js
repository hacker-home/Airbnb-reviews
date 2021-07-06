const fs = require("fs");
const path = require("path");
// const myJson = fs.readFileSync("C:/Users/Peter/Desktop/SDC_data/actualData-massive.json");
// const fileName = "../actualData-Locations-small.json";
// const fileName = "../actualData-Locations-Massive-10million.json";
// const fileName = "../actualData-massive.json";
const fileName = "../actualData-Locations-Massive-10million.json";
// const fileName = "../actualData-Reviews-workingEdition.json";

const myJson = fs.readFileSync(path.join(__dirname, fileName));

function counter() {
  let count = 0;
  let parsed = JSON.parse(myJson);
  for (let item of parsed) {
    count++;
  }
  console.log(count);
  return count;
}

counter();


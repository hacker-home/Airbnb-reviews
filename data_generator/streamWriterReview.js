const fs = require("fs");
const path = require("path");
require("events").EventEmitter.defaultMaxListeners = 20;
const casual = require("casual");

const fileName = "./actualData-Reviews-smallEdition.json";
// const fileName = "./actualData-Reviews-smallEdition.json";

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
let amountOfReviews = 200;

async function safelyWriteReviews(dataArray) {
  writable.write("[");
  for (let i = 0; i <= amountOfReviews; i++) {
    const curData = {};

    //id
    const id = i + 1;
    curData.id = id;
    //foreign key
    curData.loc_id = randomNumber(1, Math.floor((amountOfReviews / 10)));
    // curData.loc_id = Math.floor(Math.random() * (amountOfReviews / 10));
    // name
    const name = casual.first_name;
    curData.name = name;

    //gender 0:women 1:men
    let from = 0;
    let to = 1;
    const gender = casual.integer(from, to);
    curData.gender = gender;

    //profile pic
    from = 0;
    to = 99;
    const profilePicNum = casual.integer(from, to);
    curData.profilePicNum = profilePicNum;

    // date
    let formate = "MMMM YYYY";
    const date = casual.date(formate);
    curData.date = date;

    // sentence
    const sentence = casual.text;
    curData.sentence = sentence;

    // rating_accuracy
    from = 0;
    to = 5;
    const accuracy_rating = casual.double(from, to).toFixed(1);
    curData.accuracy_rating = Number(accuracy_rating);

    // rating_communication
    const communication_rating = casual.double(from, to).toFixed(1);
    curData.communication_rating = Number(communication_rating);

    // rating_cleanliness
    const cleanliness_rating = casual.double(from, to).toFixed(1);
    curData.cleanliness_rating = Number(cleanliness_rating);

    // rating_location
    const location_rating = casual.double(from, to).toFixed(1);
    curData.location_rating = Number(location_rating);

    // rating_check_in
    const check_in_rating = casual.double(from, to).toFixed(1);
    curData.check_in_rating = Number(check_in_rating);

    // rating_value
    const value_rating = casual.double(from, to).toFixed(1);
    curData.value_rating = Number(value_rating);

    // overall_rating = ratings above / 6
    curData.overall_rating = Number(
      (
        (curData.accuracy_rating +
          curData.communication_rating +
          curData.cleanliness_rating +
          curData.location_rating +
          curData.check_in_rating +
          curData.value_rating) /
        6
      ).toFixed(1)
    );
    const shouldContinue = writable.write(JSON.stringify(curData));
    if (i < amountOfReviews) {
      writable.write(",");
    }
    if (i === amountOfReviews) {
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
safelyWriteReviews();

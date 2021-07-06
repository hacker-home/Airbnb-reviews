const faker = require('faker');
const Path = require('path');
const Fs = require('fs');
const { Readable } = require('stream');
const casual = require("casual");

const locationWritable = Fs.createWriteStream('locations.csv');
const ReviewsWritable = Fs.createWriteStream('reviews.csv');

const randomNumberGenerator = (min, max) => {
  const minVal = Math.ceil(min);
  const maxVal = Math.floor(max);
  return Math.floor(Math.random() * (maxVal - minVal)) + minVal;
};

const checkInOutGenerator = () => {
  // const year = new Date().getFullYear();
  // const month = new Date().getMonth();
  // let date = new Date().getDate();
  // date += randomNumberGenerator(1, 60);
  // const checkIn = new Date(year, month, date);
  // date += randomNumberGenerator(2, 6);
  // const checkOut = new Date(year, month, date);
  // return { checkIn, checkOut };
};

// const curData = {};

// //id
// const id = i + 1;
// curData.id = id;
// // name
// const name = casual.first_name;
// curData.name = name;

// //gender 0:women 1:men
// let from = 0;
// let to = 1;
// const gender = casual.integer(from, to);
// curData.gender = gender;

// //profile pic
// from = 0;
// to = 99;
// const profilePicNum = casual.integer(from, to);
// curData.profilePicNum = profilePicNum;

// // date
// let formate = "MMMM YYYY";
// const date = casual.date(formate);
// curData.date = date;

// // sentence
// const sentence = casual.text;
// curData.sentence = sentence;

// // rating_accuracy
// from = 0;
// to = 5;
// const accuracy_rating = casual.double(from, to).toFixed(1);
// curData.accuracy_rating = Number(accuracy_rating);

// // rating_communication
// const communication_rating = casual.double(from, to).toFixed(1);
// curData.communication_rating = Number(communication_rating);

// // rating_cleanliness
// const cleanliness_rating = casual.double(from, to).toFixed(1);
// curData.cleanliness_rating = Number(cleanliness_rating);

// // rating_location
// const location_rating = casual.double(from, to).toFixed(1);
// curData.location_rating = Number(location_rating);

// // rating_check_in
// const check_in_rating = casual.double(from, to).toFixed(1);
// curData.check_in_rating = Number(check_in_rating);

// // rating_value
// const value_rating = casual.double(from, to).toFixed(1);
// curData.value_rating = Number(value_rating);

// // overall_rating = ratings above / 6
// curData.overall_rating = Number(
//   (
//     (curData.accuracy_rating +
//       curData.communication_rating +
//       curData.cleanliness_rating +
//       curData.location_rating +
//       curData.check_in_rating +
//       curData.value_rating) /
//     6
//   ).toFixed(1)
// );


const roomNameAppendix = ['\'s Apartment', '\'s House', '\'s Loft', '\'s Condo'];

class LocationStream extends Readable {
  constructor(options) {
    super(options);

    this.count = 1;
  }


  _read() {
    // if (this.count === 10) {
    if (this.count === 10000000) {
      console.log('Rooms: writes complete');
      return;
    }

    const location = {
      id: this.count,
      name: faker.commerce.department()
    }

    if (this.count === 1) {
      this.push(`${Object.keys(location).toString()}\n`);
    }
    this.push(`${location.id},${location.name}\n`)
    // this.push(`${room.id},${room.description},${room.price},${room.cleaning_fee},${room.service_fee},${room.tax},${room.max_adults},${room.max_children},${room.max_infants},${room.max_night},${room.min_night},${room.ratings},${room.num_reviews}\n`);

    this.count += 1;
  }
}

class ReviewStream extends Readable {
  constructor(options) {
    super(options);

    this.count = 1;
  }

  _read() {
    if (this.count === 20000000) {
      console.log('Bookings: Writes complete');
      return;
    }
    const review = {
      // //id
      // const id = i + 1;
      //here
      review_id: this.count,
      loc_id: randomNumberGenerator(1, 5000000),
      name: casual.first_name,
      gender: casual.integer(0, 1),
      profilePicNum: casual.integer(0, 99),
      // let formate = "MMMM YYYY";
      // const date = casual.date(formate);
      date: casual.date("MMMM YYYY"),
      sentence: `${faker.commerce.product()} ${faker.company.bsAdjective} ${faker.company.bsNoun}`,
      accuracy_rating: Number(casual.double(0, 5).toFixed(1)),
      communication_rating: Number(casual.double(0, 5).toFixed(1)),
      cleanliness_rating: Number(casual.double(0, 5).toFixed(1)),
      location_rating: Number(casual.double(0, 5).toFixed(1)),
      check_in_rating: Number(casual.double(0, 5).toFixed(1)),
      value_rating: Number(casual.double(0, 5).toFixed(1)),
      overall_rating: Number(casual.double(0, 5).toFixed(1)),
      // // rating_accuracy
      // from = 0;
      // to = 5;
      // const accuracy_rating = casual.double(from, to).toFixed(1);



    };
    if (this.count === 1) {
      this.push(`${Object.keys(review).toString()}\n`);
    }
    this.push(`${review.review_id},${review.loc_id},${review.name},${review.gender},${review.profilePicNum},${review.date},${review.sentence},${review.accuracy_rating},${review.communication_rating},${review.cleanliness_rating},${review.location_rating},${review.check_in_rating},${review.value_rating},${review.overall_rating}\n`);
    this.count += 1;
  }
}

const locationStream = new LocationStream();
// const roomStream = new RoomStream();
locationStream.pipe(locationWritable);

const reviewStream = new ReviewStream();
reviewStream.pipe(ReviewsWritable);
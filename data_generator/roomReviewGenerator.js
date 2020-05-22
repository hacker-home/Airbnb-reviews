/*
 * Generate random number of reviews for each room
 * Input: number of rooms
 * Output: Array of array of reviews
 */

const casual = require('casual');
const { reviewGenerator } = require('./reviewGenerator.js');

const roomReviewGenerator = function (numOfRoom) {
  let res = [];
  for (let i = 0; i < numOfRoom; i += 1) {
    let numOfReviews = casual.integer(from = 3, to = 500);
    let room_id = i + 1;
    res.push({ room_id, reviews: reviewGenerator(numOfReviews) });
  }

  console.log(`Generating reviews for ${numOfRoom} rooms...`);

  return res;
};

module.exports = { roomReviewGenerator };

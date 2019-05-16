/*
 * Generate random number of reviews for each room
 * Input: number of rooms
 * Output: Array of array of reviews
 */

var { reviewGenerator } = require('./reviewGenerator.js');
var casual = require('casual');

var roomReviewGenerator = function (numOfRoom) {
  var res = [];
  for (var i = 0; i < numOfRoom; i++) {
    var numOfReviews = casual.integer(from = 3, to = 500);
    var room_id = i + 1;
    res.push({room_id, reviews: reviewGenerator(numOfReviews)});
  }

  console.log("Generated reviews for " + numOfRoom + " rooms.");

  return res;
}

module.exports = { roomReviewGenerator };
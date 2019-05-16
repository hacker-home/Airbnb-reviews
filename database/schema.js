var { roomReviewGenerator } = require('../data_generator/roomReviewGenerator');
var mongoose = require('mongoose');

mongoose.connect('mongodb://localhost:27017/airbnb', { useNewUrlParser: true });
var Schema = mongoose.Schema;
var Reviews = mongoose.model("reviews", new Schema({ room_id: Number, reviews: Array }));

// connection.reviews.drop();

//drop collection if exist
Reviews.collection.drop(()=>{});

// var roomReq = prompt("Reviews for how many rooms?", 100);
var arrayOfReviews = roomReviewGenerator(100);

console.log("Updating Database...")
Reviews.insertMany(arrayOfReviews)
  .then(()=>{
    console.log('---Database Updated---')
    mongoose.connection.close();
  });

  module.exports = { Reviews };
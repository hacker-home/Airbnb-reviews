var { roomReviewGenerator } = require('../data_generator/roomReviewGenerator');
var { Reviews } = require('./schema.js');
var mongoose = require('mongoose');

mongoose.connect('mongodb://localhost:27017/airbnb', { useNewUrlParser: true });

//drop collection if exist
Reviews.collection.drop(()=>{});

// var roomReq = prompt("Reviews for how many rooms?", 100);
var arrayOfReviews = roomReviewGenerator(100);

console.log("Updating Database...")
Reviews.insertMany(arrayOfReviews)
  .then(()=>{
    console.log('---Database Updated---')
    mongoose.connection.close();
  })
  .catch(() => {
    console.log('fail to update');
    mongoose.connection.close();
  });
/* 
 * Airbnb fake reviews generator
 * Library: casual (npm install casual)
 * Input: Number of reviews
 * Output: An array of random reviews
 */

var casual = require('casual');

var generator = function (numberOfData) {

  console.log('generating ' + numberOfData + ' of review(s)...')
  
  res = [];

  for (let i = 0; i < numberOfData; i++) {
    var curData = {};
    //name
    var name = casual.first_name;
    curData['name'] = name;
    
    //date
    var date = casual.date(formate = 'YYYY-MMMM');
    curData['date'] = date;

    //sentence
    var sentence = casual.text;
    curData['sentence'] = sentence;
    
    //rating_accuracy
    var accuracy__rating = casual.double(from = 0, to = 5).toFixed(1);
    curData['accuracy__rating'] = Number(accuracy__rating);
    
    //rating_communication
    var communication__rating = casual.double(from = 0, to = 5).toFixed(1);
    curData['communication__rating'] = Number(communication__rating);
    
    //rating_cleanliness
    var cleanliness_rating = casual.double(from = 0, to = 5).toFixed(1);
    curData['cleanliness_rating'] = Number(cleanliness_rating);
    
    //rating_location
    var location_rating = casual.double(from = 0, to = 5).toFixed(1);
    curData['location_rating'] = Number(location_rating);
    
    //rating_check_in
    var check_in_rating = casual.double(from = 0, to = 5).toFixed(1);
    curData['check_in_rating'] = Number(check_in_rating);
    
    //rating_value
    var value_rating = casual.double(from = 0, to = 5).toFixed(1);
    curData['value_rating'] = Number(value_rating);
    
    //overall_rating = ratings above / 6
    curData['overall_rating'] = Number(((curData.accuracy__rating
       + curData.communication__rating 
       + curData.cleanliness_rating 
       + curData.location_rating 
       + curData.check_in_rating 
       + curData.value_rating) / 6)
       .toFixed(1));
    //listing_id = 
    res.push(curData);
  }

  console.log(numberOfData + ' reviews are ready.')

  return res;
}


module.exports = { generator };
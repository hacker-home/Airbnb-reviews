/* Airbnb fake reviews generator
Library: casual (npm install casual)
Input: Number of reviews
Output: An array of random reviews
*/

var casual = require('casual');

var generator = function (numberOfData) {
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
    var sentence = casual.sentence;
    curData['sentence'] = sentence;
    
    //rating_accuracy
    var accuracy = casual.double(from = 0, to = 5).toFixed(1);
    curData['accuracy'] = Number(accuracy);
    
    //rating_communication
    var communication = casual.double(from = 0, to = 5).toFixed(1);
    curData['communication'] = Number(communication);
    
    //rating_cleanliness
    var cleanliness = casual.double(from = 0, to = 5).toFixed(1);
    curData['cleanliness'] = Number(cleanliness);
    
    //rating_location
    var location = casual.double(from = 0, to = 5).toFixed(1);
    curData['location'] = Number(location);
    
    //rating_check_in
    var check_in = casual.double(from = 0, to = 5).toFixed(1);
    curData['check_in'] = Number(check_in);
    
    //rating_value
    var value = casual.double(from = 0, to = 5).toFixed(1);
    curData['value'] = Number(value);
    
    //overall_rating = ratings above / 6
    curData['overall_rating'] = Number(((curData.accuracy
       + curData.communication 
       + curData.cleanliness 
       + curData.location 
       + curData.check_in 
       + curData.value) / 6)
       .toFixed(1));
    //listing_id = 
    res.push(curData);
  }
  return res;
}

console.log(generator(1));
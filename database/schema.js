var mongoose = require('mongoose');

// mongoose.connect('mongodb://localhost:27017/airbnb', { useNewUrlParser: true });
var Schema = mongoose.Schema;
var Reviews = mongoose.model("reviews", new Schema({ room_id: Number, reviews: Array }));
// mongoose.connection.close();

module.exports = { Reviews };
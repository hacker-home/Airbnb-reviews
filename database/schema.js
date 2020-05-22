const mongoose = require('mongoose');

const Schema = mongoose.Schema;
const Reviews = mongoose.model("reviews", new Schema({ room_id: Number, reviews: Array }));

module.exports = { Reviews };
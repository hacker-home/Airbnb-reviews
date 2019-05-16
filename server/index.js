var db = require('../database/schema.js');
var express = require('express');
var bodyParser = require('body-parser');
var cors = require('cors');
var app = express();
var mongoose = require('mongoose');

const PORT = 3001;



app.use(bodyParser.json());
app.use(cors());

app.get('/reviews', (req, res) => {
  mongoose.connect('mongodb://localhost:27017/airbnb', { useNewUrlParser: true });
  var target = {room_id: req.body.room_id};
  db.Reviews.find(target)
    .then((data) => {
      mongoose.connection.close();
      res.status(200).send(data);
    })
    .catch((err) => {
      mongoose.connection.close();
      res.status(500).send("Fail to fetch");
    })
})

console.log("Server is now listening on PORT:", PORT);
app.listen(PORT);
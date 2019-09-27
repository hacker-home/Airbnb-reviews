const mongoose = require('mongoose');
const db = require('../database/schema.js');
const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const app = express();
const path = require('path');

const PORT = 3004;

app.use(bodyParser.json());
app.use(cors());
app.use(express.static(`${__dirname}/../client/dist`));

app.get('/reviews/:room_id', (req, res) => {
  mongoose.connect('mongodb://localhost:27017/airbnb', { useNewUrlParser: true });
  const target = {room_id: req.params.room_id};
  db.Reviews.find(target)
    .then((data) => {
      mongoose.connection.close();
      res.status(200).send(data);
    })
    .catch((err) => {
      mongoose.connection.close();
      res.status(500).send("Fail to fetch");
    })
});


app.listen(PORT, ()=>{
  console.log("Server is now listening on port:", PORT);
  console.log(`Visit website at http://localhost:${PORT}/:id=1`);
});
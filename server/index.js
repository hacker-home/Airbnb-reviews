const mongoose = require('mongoose');
const db = require('../database/schema.js');
const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const app = express();
const path = require('path');

const PORT = 3001;

app.use(bodyParser.json());
app.use(cors());
// app.use(express.static(path.join(__dirname, '../client/dist')));
app.use(express.static(`${__dirname}/../client/dist`));
// app.use(bodyParser.urlencoded());

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

// app.get('/:roomId', function(req, res) {
//   // res.header("X-Content-Type", "text/javascript");
//   res.sendFile(path.join(__dirname, '/../client/dist/index.html'))
// });


app.listen(PORT, ()=>{
  console.log("Server is now listening on port:", PORT);
});
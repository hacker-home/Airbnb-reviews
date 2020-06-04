const mongoose = require("mongoose");
// const db = require("../database/schema.js");
const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");
const app = express();
const path = require("path");
const { Client } = require("pg");

// import http from "k6/http";
// import { check, sleep } from "k6";

// require('dotenv').config();

const PORT = 3004;

app.use(bodyParser.json());
app.use(cors());
app.use(express.static(`${__dirname}/../client/dist`));

const client = new Client({
  host: "localhost",
  port: 5432,
  database: "airbnb",
  user: "postgres",
  password: "datasaver",
});

// const client = new Client()
// client.connect(err => {
//   if (err) {
//     console.error('connection error', err.stack)
//   } else {
//     console.log('connected')
//   }
// })
// const client = new Client({
//   host: process.env.HOST,
//   port: process.env.DBPORT,
//   database: process.env.DATABASE,
//   user: process.env.USER,
//   password: process.env.PASSWORD,
// });

// shape of data -> response.data[0].reviews

//PostGres

// client
//   .connect()
//   .then(() => console.log("connected"))
//   .catch((err) => console.log("err", err));

// client.query('select * from bnb_locations limit 1').then((data) => console.log('data', data)).catch((err) => console.log(err))

client
  .connect()
  .then(() => {
    console.log("connected");
    app.get("/:id", (req, res) => {
      console.log("hitting");
      res.send("hitting");
    });
    console.log("how is /reviews/ being appended to the urls /?id=4");
    console.log("git update change");
    app.get("/reviews/:room_id", (req, res) => {
      // app.get("/:id", (req, res) => {
      const target = { room_id: req.params.room_id };
      console.log("target", target);
      const id = Number(target.room_id);
      console.log("id", id);
      client
        .query(`select * from bnb_reviews where loc_id = ${id}`)
        .then((data) => {
          let arr = [];
          arr[0] = {
            reviews: data.rows,
          };
          res.send(arr);
        });
    });
  })
  .catch((err) => {
    console.log("error !", err);
  });

app.listen(PORT, () => {
  console.log("Server is now listening on port:", PORT);
  console.log(`Visit website at http://localhost:${PORT}/:id=1`);
});

// app.get("/reviews/:room_id", (req, res) => {
//   mongoose.connect("mongodb://localhost:27017/airbnb", {
//     useNewUrlParser: true,
//   });
//   const target = { room_id: req.params.room_id };
//   db.Reviews.find(target)
//     .then((data) => {
//       mongoose.connection.close();
//       res.status(200).send(data);
//     })
//     .catch((err) => {
//       mongoose.connection.close();
//       res.status(500).send("Fail to fetch");
//     });
// });

// app.listen(PORT, () => {
//   console.log("Server is now listening on port:", PORT);
//   console.log(`Visit website at http://localhost:${PORT}/:id=1`);
// });

//example from my postgresql

// accuracy_rating:"0.5"
// check_in_rating:"3.4"
// cleanliness_rating:"0.8"
// communication_rating:"0.8"
// date:"November 1993"
// gender:false
// loc_id:9
// location_rating:"3.9"
// name:"Elinor"
// overall_rating:"1.8"
// profilepicnum:12
// review_id:4205
// sentence:"Alias mollitia perspiciatis atque. Aut sint vitae at. Consequatur suscipit vel quisquam illum fugiat dolorem. Qui quos pariatur voluptas qui et inventore nihil aspernatur. Omnis aspernatur quis sequi amet delectus et aut id."
// value_rating:"1.6"

//examples from mongoDB
// accuracy_rating:1.7
// check_in_rating:2
// cleanliness_rating:4.6
// communication_rating:0
// date:"March 2010"
// gender:1
// id:1
// location_rating:2.1
// name:"Shad"
// overall_rating:2.1
// profilePicNum:16
// sentence:"Mollitia nostrum non recusandae quia iste. Beatae est quia sit voluptatibus ut quia error. Quaerat explicabo esse nihil tempora voluptas id neque occaecati. Voluptas doloribus eum eius. Veniam officia est voluptates eos sunt quaerat molestiae inventore eaque. Qui qui assumenda quis et autem."
// value_rating:2.2

// accuracy_rating:1.2
// check_in_rating:4.9
// cleanliness_rating:4.6
// communication_rating:4
// date:"January 1994"
// gender:0
// id:2
// location_rating:1
// name:"Melody"
// overall_rating:2.9
// profilePicNum:97
// sentence:"Expedita possimus iste consequatur deserunt. Dolorem blanditiis aut voluptatibus. Natus vero minima id sit necessitatibus rerum minima animi. Aut voluptas est quia sed provident."
// value_rating:1.8

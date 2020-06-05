const fs = require("fs");
const path = require("path");
require("events").EventEmitter.defaultMaxListeners = 20;
const fileName = "./actualData-Locations-smallEdition.json";
const faker = require("faker");

const { Client } = require("pg");
const client = new Client({
  host: "ec2-34-218-234-151.us-west-2.compute.amazonaws.com",
  port: 5432,
  database: "airbnb",
  user: "postgres",
  password: "datasaver",
});
// const client = new Client({
//   host: "localhost",
//   port: 5432,
//   database: "airbnb",
//   user: "postgres",
//   password: "datasaver",
// });
client
  .connect()
  .then(() => {
    console.log("connected via PG for locations!");

    let amountOfLocations = 100000;

    async function safelyInsertReviews() {
      for (let i = 0; i <= amountOfLocations; i++) {
        let name = faker.commerce.department();
        try {
          await client.query(
            `insert into bnb_locations (name) VALUES ('${name}')`
          );
        } catch (err) {
          console.log("err", err);
        }
      }
    }

    safelyInsertReviews();
    console.log("done!");
  })
  .catch((err) => {
    console.error("error!", err);
  });

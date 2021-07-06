const pg = require("pg");
const { Client } = require("pg");
const fs = require("fs");
const path = require("path");

const fileName = "../actualData-Locations-Massive-10million.json";
// const fileName = "../actualData-Locations-small.json";

// const myJson = "C:\Users\Peter\Desktop\SDC_data\actualData-massive";
const myJson = fs.readFileSync(path.join(__dirname, fileName));

// console.log("parse", JSON.parse(myJson));
// for (let rev of myJson) {
//   console.log("rev", rev);
// }

// const client = new Client({
//   host: "ec2-34-218-234-151.us-west-2.compute.amazonaws.com",
//   port: 5432,
//   database: "airbnb",
//   user: "postgres",
//   password: "datasaver",
// });

const client = new Client({
  host: "localhost",
  port: 5432,
  database: "airbnb",
  user: "postgres",
  password: "datasaver",
});

client
  .connect()
  .then(async () => {
    console.log("were connected");
    let parsed = JSON.parse(myJson);
    let counter = 1;
    for (let item of parsed) {
      try {
        counter++;
        await client.query(
          `insert into bnb_locations (name) VALUES ('${item.name}')`
        );
      } catch (err) {
        console.log("counter", counter, "err", err);
      }
    }
    console.log('done and count is', counter);
    client.end((err) => {
      console.log("client has disconnected");
      if (err) {
        console.log("error during disconnection", err.stack);
      }
    });
  })
  .catch((err) => console.error("connection error", err.stack));

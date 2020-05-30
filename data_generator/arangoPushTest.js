const fs = require("fs");
const Database = require("arangojs").Database;
const aql = require("arangojs");
const db = new Database(process.env.ARANGOLOCAL);
db.useBasicAuth(process.env.ARANGOUSER, process.env.ARANGOPW);

db._createDatabase(process.env.ARANGODB);
db._useDatabase(process.env.ARANGODB);

let myDB = db.createDatabase("myLilDB_b", [{ username: "root" }]);
let collection = db.collection("third_Collection");
let datas = ["dog", "cat", "fish", "rhino", "hen"];
let doc = {
  _key: `1`,
  a: datas[Math.floor(Math.random() * datas.length)],
  b: datas[Math.floor(Math.random() * datas.length)],
  c: Date(),
};
collection.save(doc);

// console.log(collection.all().then((data) => console.log(data)));
// console.log(collection.get());

// function wrapper() {
//   fs.readFile("../smalljsontestarrayed.json", async (data) => {
//     let collection = db.collection("firstCollection");
//     for (let i = 0; i < 10; i++) {
//       let doc = {
//         _key: `id${i}`,
//         a: datas[Math.floor(Math.random() * datas.length)],
//         b: datas[Math.floor(Math.random() * datas.length)],
//         c: Date(),
//       };
//       await collection.save(doc);
//     }
//     console.log(
//       "all ---------------------",
//       collection.all().then((time) => console.log("hey----", time))
//     );
//   });
// }

// console.log(
//   "collection length",
//   collection.count(
//     collection.all().then((time) => console.log("hey----", time))
//   )
// );

// wrapper();

// import { Database, aql } from "arangojs";
// or plain old Node-style


var arangojs = require("arangojs");
var db = new arangojs.Database();
var now = Date.now();
db.query({
  query: "RETURN @value",
  bindVars: { value: now }
})
  .then(function (cursor) {
    return cursor.next().then(function (result) {
      // ...
      console.log("err", err);
    });
  })
  .catch(function (err) {
    // ...
    console.log("err", err);
  });
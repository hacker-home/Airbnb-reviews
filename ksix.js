import http from "k6/http";
import { check, sleep } from "k6";

function randomNumber(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min + 1)) + min;
}

export let options = {
  stages: [
    { duration: "1s", target: 1 },
    { duration: "2s", target: 5 },
    { duration: "1s", target: 0 },
  ],
};

export default function () {
  let rando = randomNumber(1, 999);
  // let res = http.get(`https://www.google.com/`);
  //http://localhost:3004/?id=4
  // let res = http.get(`http://127.0.0.1:3004/?id=1`);
  let res = http.get(`http://127.0.0.1:3004/?id=${rando}`);
  check(res, {
    success: (r) => {
      console.log('status--------', r.status);

      r.status == 200;
    },
    error: (err) => {
      console.log("error!", JSON.stringify(err));
    },
  });
  sleep(1);
}
// // transactionTimeOk: (r) => r.timings.duration < 300,

// // module.exports = { tester };


// import http from 'k6/http';
// import { sleep } from 'k6';
// export let options = {
//   vus: 10,
//   duration: '2s',
// };
// export default function () {
//   http.get('http://test.k6.io');
//   sleep(1);
// }
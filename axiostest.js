const axios = require('axios');

axios.get('http://localhost:3004/?id=1').then((data) => {
  console.log('data', data);
})
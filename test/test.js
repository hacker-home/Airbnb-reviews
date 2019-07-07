const { reviewGenerator } = require('../data_generator/reviewGenerator')

/**
 * testing reviewGenerator
*/
test('Should return an empty array', () => {
  expect(reviewGenerator(0)).toHaveLength(0);
});

test('Should create one review', () => {
  expect(reviewGenerator(1)).toHaveLength(1);
});

test('Should generate a random name', () => {
  expect(typeof reviewGenerator(1)[0].name).toBe('string');
});

test('Should generate a date matches formate YYYY-MMMM', () => {
  let date = reviewGenerator(1)[0].date;
  let year = date.split(' ')[1];
  let month = date.split(' ')[0];
  const months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
  expect(year.length).toBe(4);
  expect(months.indexOf(month)).toBeGreaterThanOrEqual(0);
});
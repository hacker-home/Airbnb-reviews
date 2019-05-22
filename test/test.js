const { reviewGenerator } = require('../data_generator/reviewGenerator')

/**
 * testing reviewGenerator
*/
test('Should create one review', () => {
  expect(reviewGenerator(1).length).toBe(1);
});

test('Should generate a random name', () => {
  expect(typeof reviewGenerator(1)[0].name).toBe('string');
});

test('Should generate a date matches formate YYYY-MMMM', () => {
  let date = reviewGenerator(1)[0].date;
  let year = date.split('-')[0];
  let month = date.split('-')[1];
  const months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
  expect(year.length).toBe(4);
  expect(months.indexOf(month)).toBeGreaterThanOrEqual(0);
});
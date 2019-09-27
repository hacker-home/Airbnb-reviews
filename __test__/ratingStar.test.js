import React from 'react';
import {mount, shallow} from 'enzyme'
import RatingStar from '../client/src/components/RatingStar.jsx';

import style from '../client/dist/style.css';

test('Check if RatingStar includes correct className', () => {
  // Render a checkbox with label in the document
  const wrapper = mount(<RatingStar />);

  expect(wrapper.find(style.StarBoxInReviews)).toBeChecked();
});
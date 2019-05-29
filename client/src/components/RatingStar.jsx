import React from 'react';
class RatingStar extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <span className='StarBoxInReviews'>
        <span className='outerStarInReviews'>
          <span className='innerStarInReviews' style={{width: `${this.props.rating * 22}px`}}></span>
        </span>
      </span>
    )
  }
}

export default RatingStar;
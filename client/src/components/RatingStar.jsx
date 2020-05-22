import React from 'react';
import style from '../../dist/style.css';

class RatingStar extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <span className={style.StarBoxInReviews}>
        <span className={style.outerStarInReviews}>
          <span className={style.innerStarInReviews} style={{width: `${this.props.rating * 22}px`}}></span>
        </span>
      </span>
    )
  }
}

export default RatingStar;
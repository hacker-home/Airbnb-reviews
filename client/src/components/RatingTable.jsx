import RatingStar from './RatingStar.jsx'
import React from 'react';
import style from '../../dist/style.css';

class RatingTable extends React.Component {
  constructor(props) {
    super(props);
  }

  //use 2 div to seperate ratings: 
  //left: accuracy, communication, cleanliness
  //right: location, checkin, value 
  render() {
    return (
      <div className={style.rating_table}>
        <div className={style.left_rating}>
          <div className={style.oneRating}><span className={style.ratingName}>Accuracy </span><RatingStar rating={this.props.ratings.accuracy}/></div>
          <div className={style.oneRating}><span className={style.ratingName}>Communucation </span><RatingStar rating={this.props.ratings.communication}/></div>
          <div className={style.oneRating}><span className={style.ratingName}>Cleanliness </span><RatingStar rating={this.props.ratings.cleanliness}/></div>
        </div>
        <div className={style.right_rating}>
          <div className={style.oneRating}><span className={style.ratingName}>Location </span><RatingStar rating={this.props.ratings.location}/></div>
          <div className={style.oneRating}><span className={style.ratingName}>Check-in </span><RatingStar rating={this.props.ratings.check_in}/></div>
          <div className={style.oneRating}><span className={style.ratingName}>Value </span><RatingStar rating={this.props.ratings.value}/> </div>
        </div>
      </div>
    )
  }
}


export default RatingTable;
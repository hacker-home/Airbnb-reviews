import RatingStar from './RatingStar.jsx'
class RatingTable extends React.Component {
  constructor(props) {
    super(props);
  }

  //use 2 div to seperate ratings: 
  //left: accuracy, communication, cleanliness
  //right: location, checkin, value 
  render() {
    return (
      <div className="rating_table">
        <div className="left_rating">
          <div className="oneRating"><span className="ratingName">Accuracy: </span><RatingStar rating={this.props.ratings.accuracy}/></div>
          <div className="oneRating"><span className="ratingName">Communucation: </span><RatingStar rating={this.props.ratings.communication}/></div>
          <div className="oneRating"><span className="ratingName">Cleanliness: </span><RatingStar rating={this.props.ratings.cleanliness}/></div>
        </div>
        <div className="right_rating">
          <div className="oneRating"><span className="ratingName">Location: </span><RatingStar rating={this.props.ratings.location}/></div>
          <div className="oneRating"><span className="ratingName">Check-in: </span><RatingStar rating={this.props.ratings.check_in}/></div>
          <div className="oneRating"><span className="ratingName">Value: </span><RatingStar rating={this.props.ratings.value}/> </div>
        </div>
      </div>
    )
  }
}


export default RatingTable;
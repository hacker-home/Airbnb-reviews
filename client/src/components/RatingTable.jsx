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
          <div className="oneRating">Accuracy: {this.props.ratings.accuracy}</div>
          <div className="oneRating">Communucation: {this.props.ratings.communication}</div>
          <div className="oneRating">Cleanliness: {this.props.ratings.cleanliness}</div>
        </div>
        <div className="right_rating">
          <div className="oneRating">Location: {this.props.ratings.location}</div>
          <div className="oneRating">Check-in: {this.props.ratings.check_in}</div>
          <div className="oneRating">Value: {this.props.ratings.value} </div>
        </div>
      </div>
    )
  }
}


export default RatingTable;
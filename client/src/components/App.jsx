// import React from 'react';
import axios from 'axios';
import SearchBar from './SearchBar.jsx';
import RatingTable from './RatingTable.jsx';
class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      rev_data: [],
      room_id: 1,
      accuracy_rating: 0,
      communication_rating: 0,
      cleanliness_rating: 0,
      location_rating: 0,
      check_in_rating: 0,
      value_rating: 0,
    }
  };




  componentDidMount() {
    axios.get(`http://localhost:3001/reviews/?room_id=${this.state.room_id}`)
      .then((response) => {
        this.setState({
          rev_data: response.data[0].reviews,
        });
      })
      .catch(() => {
        console.log("error");
      });
  };


  setRating(accuracy_rating, communication_rating, cleanliness_rating, 
    location_rating, check_in_rating, value_rating) {
      this.setState({
        accuracy_rating,
        communication_rating,
        cleanliness_rating, 
        location_rating, 
        check_in_rating, 
        value_rating
      })
  }
  findOverallRating(rev_array) {
    let sum = 0;
    for (let i = 0; i < rev_array.length; i++) {
      sum += rev_array[i].overall_rating;
    }
    let average = (sum / rev_array.length).toFixed(1);
    this.setState({
      overall_rating: average,
    })
  }

  render() {
    return (
      <div className="rew_board">
        <div id='rev_count'>{this.state.rev_data.length} reviews <SearchBar /></div>
        <div className='ratingTable'><RatingTable/></div>
      </div>
    )
  };
}

export default App;
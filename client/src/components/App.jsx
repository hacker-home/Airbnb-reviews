// import React from 'react';
import axios from 'axios';
import SearchBar from './SearchBar.jsx';
class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      rev_data: [],
      room_id: 1,
    }
  };
  

  componentDidMount() {
    axios.get(`http://localhost:3001/reviews/?room_id=${this.state.room_id}`)
      .then((response) => {
        this.setState({
          rev_data : response.data[0].reviews,
        });
        // this.findOverallRating(this.state.rev_data);
      })
      .catch(() => {
        console.log("error");
      });
  };

  // findOverallRating(rev_array) {
  //   let sum = 0;
  //   for (let i = 0; i < rev_array.length; i++) {
  //     sum += rev_array[i].overall_rating;
  //   }
  //   let average = (sum / rev_array.length).toFixed(1);
  //   this.setState({
  //     overall_rating: average,
  //   })
  // }

  render() {
    return (
      <div className="rew_board">
        <div id='rev_count'>{this.state.rev_data.length} reviews <SearchBar />
        </div>
      </div>
    )
  };
}

export default App;
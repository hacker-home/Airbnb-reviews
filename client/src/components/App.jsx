// import React from 'react';
import axios from 'axios';
import SearchBar from './SearchBar.jsx';
import RatingTable from './RatingTable.jsx';
import ReviewRender from './ReviewRender.jsx';
class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      original_data: [],
      rev_data: [[]],
      room_id: 1,
      ratings: {},
      num_reviews: 0,
      search_text: "",
    }
    this.editSearchText = this.editSearchText.bind(this);
    this.clearSearchText = this.clearSearchText.bind(this);
  };

  // fetch data while enter the website
  componentDidMount() {
    axios.get(`http://localhost:3001/reviews/?room_id=${this.state.room_id}`)
      .then((response) => {
        this.dataSlicer(response.data[0].reviews);
        this.setState({
          original_data: response.data[0].reviews,
          num_reviews: response.data[0].reviews.length,
        });
        this.findOverallRating(response.data[0].reviews);
      })
      .catch(() => {
        console.log("error");
      });
  };

  //calculate average ratings over all reviews
  findOverallRating(rev_array) {
    let sum_rating = {
      accuracy: 0,
      communication: 0,
      cleanliness: 0,
      location: 0,
      check_in: 0,
      value: 0,
    };
    for (let i = 0; i < rev_array.length; i++) {
      sum_rating['accuracy'] += rev_array[i].accuracy_rating;
      sum_rating['communication'] += rev_array[i].communication_rating;
      sum_rating['cleanliness'] += rev_array[i].cleanliness_rating;
      sum_rating['location'] += rev_array[i].location_rating;
      sum_rating['check_in'] += rev_array[i].check_in_rating;
      sum_rating['value'] += rev_array[i].value_rating;
    }
    let average = {};
    for (let key in sum_rating) {
      average[key] = (sum_rating[key] / rev_array.length).toFixed(1);
    }
    this.setState({
      ratings: average,
    });
  }

  // slice data into 7 reviews per array. and store in rev_data
  dataSlicer(rev_data) {
    let totalPages = Math.ceil(rev_data.length / 7);
    let dataForPages = [];
    for (let i = 0; i < totalPages; i++) {
      dataForPages.push(rev_data.slice(7 * i, 7 * (i + 1)));
    };
    this.setState({
      rev_data: dataForPages,
    });
  }

  editSearchText(e) {
    e.preventDefault();
    this.setState({
      search_text: e.target.value,
    })
  }

  clearSearchText(e) {
    e.preventDefault();
    this.setState({
      search_text: "",
    });
    document.getElementById("searchTextArea").value = "";
    this.dataSlicer(this.state.original_data);
  }

  render() {
    return (
      <div className="rew_board" >
        <div className='rev_count'>{this.state.num_reviews} reviews
        <SearchBar original_data={this.state.original_data} 
            editSearchText={this.editSearchText} 
            dataSlicer={this.dataSlicer.bind(this)}
            search_text={this.state.search_text}
            clearSearchText={this.clearSearchText}/>
        </div>
        <div className='ratingTable'>
          <RatingTable ratings={this.state.ratings} />
        </div>
        <div className='review_table'>
          <ReviewRender data={this.state.rev_data} search_text={this.state.search_text}/>
        </div>
      </div>
    )
  };
}

export default App;
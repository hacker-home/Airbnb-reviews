import axios from 'axios';
import SearchBar from './SearchBar.jsx';
import RatingTable from './RatingTable.jsx';
import ReviewRender from './ReviewRender.jsx';
import RatingStar from './RatingStar.jsx'
import React from 'react';

import style from '../../dist/style.css';
class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      original_data: [],
      rev_data: [[]],
      room_id: Math.floor(Math.random()*99),
      ratings: {},
      overall_rating: 0,
      num_reviews: 0,
      search_text: "",
      curPage:0,
    }
    this.editSearchText = this.editSearchText.bind(this);
    this.clearSearchText = this.clearSearchText.bind(this);
    this.setCurPage = this.setCurPage.bind(this);
  };

  // fetch data while enter the website
  componentDidMount() {
    axios.get(`/reviews/${window.location.href.match(/id\s*=\s*(.*)/)[1]}`)
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
      average[key] = Number((sum_rating[key] / rev_array.length).toFixed(1));
    }
    let overall_rating = 0;
    for (let key in average) {
      overall_rating += Number(average[key]);
    }
    overall_rating = Number((overall_rating / 6).toFixed(1));
    this.setState({
      ratings: average,
      overall_rating,
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
    this.setCurPage(0);
  }

  setCurPage(page) {
    this.setState({
      curPage:page,
    })
  }

  render() {    
    return (
      <div className={style.rew_board} >
        <div className={style.seperator24}></div>
        <div className={style.reviewAndSearchBar}>
          <div className={style.rev_count}>{this.state.num_reviews} Reviews</div>
          <span className={style.topRatingStar}><RatingStar rating={this.state.overall_rating}/></span>
          <SearchBar original_data={this.state.original_data}
            editSearchText={this.editSearchText}
            dataSlicer={this.dataSlicer.bind(this)}
            search_text={this.state.search_text}
            clearSearchText={this.clearSearchText}
            setCurPage={this.setCurPage} />
        </div>
        <div className={style.seperator16}></div>
        <div className={style.ratingTable}>
          <RatingTable ratings={this.state.ratings} />
        </div>
        <div className={style.review_table}>
          <ReviewRender data={this.state.rev_data} search_text={this.state.search_text} curPage={this.state.curPage} setCurPage={this.setCurPage}/>
        </div>
      </div>
    )
  };
}

export default App;
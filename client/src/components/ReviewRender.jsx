import ShowOneReview from './ShowOneReview.jsx'
import PageButtons from './PageButtons.jsx';
import React from 'react';

class ReviewRender extends React.Component {
  constructor(props) {
    super(props);

  }

  changePage(e) {
    e.preventDefault();
    const elmnt = document.getElementById("airbnb_reviews");
    function scrollToTop() {
      elmnt.scrollIntoView({ behavior: 'smooth'}); // Top
    }
    if (e.target.value === "＜") {
      this.props.setCurPage(this.props.curPage - 1);
      scrollToTop();

      return;
    } else if (e.target.value === "＞") {
      this.props.setCurPage(this.props.curPage + 1);
      scrollToTop();

      return;
    }
    this.props.setCurPage(e.target.value - 1);
    scrollToTop();

    return;
  }

  render() {
    if (this.props.data[this.props.curPage]) {
      return (
        <div>
          <div>
            {this.props.data[this.props.curPage].map((item) => {
              return <ShowOneReview key={item.id + 'rev'} review={item} search_text={this.props.search_text} />
            })}
          </div>
          <PageButtons curPage={this.props.curPage} data={this.props.data} changePage={this.changePage.bind(this)} />
          <br />
          <br />
        </div>
      );
    } else if (this.props.search_text !== '') {
      return (<div>None of our guests have mentioned: "<strong>{this.props.search_text}</strong>"</div>)
    } else {
      //after search, if deleted search bar to empty and search again -> reload page
      window.location.reload();
    }
  }
}

export default ReviewRender;
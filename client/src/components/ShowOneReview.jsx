class ShowOneReview extends React.Component {
  constructor(props) {
    super(props);
  }
  //this.props.name/date/comment
  render() {
    return (
      <div className="review" key={this.props.review.id}>
        <div className="profile_picture" key={this.props.review.id+'p'}></div>
        <div key={this.props.review.id+'n'}>{this.props.review.name}</div>
        <div key={this.props.review.id+'d'}>{this.props.review.date}</div>
        <div key={this.props.review.id+'r'}>{this.props.review.sentence}</div>
      </div>
    );
  }
}

export default ShowOneReview;
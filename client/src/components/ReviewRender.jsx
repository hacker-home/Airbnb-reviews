import ShowOneReview from './ShowOneReview.jsx'
import PageButtons from './PageButtons.jsx';

class ReviewRender extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      curPage: 0
    }
  }

  render() {
    return (
      <div>
        <div>
          {this.props.data[this.state.curPage].map((item) => {
            return <ShowOneReview key={item.id + 'rev'} review={item} />
          })}
        </div>
        <PageButtons />
      </div>
    );
  }
}

export default ReviewRender;
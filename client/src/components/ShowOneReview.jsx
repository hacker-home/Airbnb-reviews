// import Highlighter from 'react-highlight-words';
import Highlighter from './Highlighter.jsx'
class ShowOneReview extends React.Component {
  constructor(props) {
    super(props);
  }
  
  handleSearchTextInSentence(){
    let target = this.props.search_text;
    let sentence = this.props.review.sentence;
    if(target === "") {
      return <div key={this.props.review.id+'r'}>{ sentence }</div> //TODO: if more than 50 words-> ...ReadMorre
    } else {
      return (
        <Highlighter id={this.props.review.id}
        searchWords={target}
        textToHighlight={sentence}/>
      )
    }
  }

  render() {
    return (
      <div className="review" key={this.props.review.id}>
        <div className="profile_picture" key={this.props.review.id+'p'}></div>
        <div key={this.props.review.id+'n'}>{this.props.review.name}</div>
        <div key={this.props.review.id+'d'}>{this.props.review.date}</div>
        {this.handleSearchTextInSentence()}
      </div>
    );
  }
}



export default ShowOneReview;
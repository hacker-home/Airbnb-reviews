// import Highlighter from 'react-highlight-words';
import Highlighter from './Highlighter.jsx'

const CHAR_THRESHOLD = 250;
const WORDS_THRESHOLD = 50;
class ShowOneReview extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      show_content: false,
    }
  }

  showContent(e) {
    e.preventDefault();
    this.setState({
      show_content: true,
    })
  }
  
  handleSearchTextInSentence(){
    let target = this.props.search_text;
    let sentence = this.props.review.sentence;
    if(target === "") {

      //if sentence is short, return whole sentence
      if(sentence.length < CHAR_THRESHOLD || sentence.split(' ') < WORDS_THRESHOLD || this.state.show_content) {
        return <div key={this.props.review.id+'r'}>{ sentence }</div>
      } else {
        let sentenceArr = sentence.split(/\b/);
        let newSentence = '';
        for (let i = 0; i < 60; i++) {
          newSentence += sentenceArr[i];
        }
        newSentence += '...'
        return (
          <div key={this.props.review.id+'r'}>{newSentence}
          <span className='readmore' key ={this.props.review.id + 'rdm'} onClick={this.showContent.bind(this)}>
            Read more
          </span>
          </div>
        )
      }
    
    
    
    
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
        <div key={this.props.review.id+'n'}><strong>{this.props.review.name}</strong></div>
        <div key={this.props.review.id+'d'}>{this.props.review.date}</div>
        {this.handleSearchTextInSentence()}
      </div>
    );
  }
}



export default ShowOneReview;
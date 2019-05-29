// import Highlighter from 'react-highlight-words';
import Highlighter from './Highlighter.jsx'
import React from 'react';
import style from '../../dist/style.css';


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

  handleSearchTextInSentence() {
    let target = this.props.search_text;
    let sentence = this.props.review.sentence;
    if (target === "") {

      //if sentence is short, return whole sentence
      if (sentence.length < CHAR_THRESHOLD || sentence.split(' ') < WORDS_THRESHOLD || this.state.show_content) {
        return <div key={this.props.review.id + 'r'}>{sentence}</div>
      } else {
        let sentenceArr = sentence.split(/\b/);
        let newSentence = '';
        for (let i = 0; i < 60; i++) {
          newSentence += sentenceArr[i];
        }
        newSentence += '...'
        return (
          <div key={this.props.review.id + 'r'}>{newSentence}
            <span className={style.readmore} key={this.props.review.id + 'rdm'} onClick={this.showContent.bind(this)}>
              Read more
          </span>
          </div>
        )
      }




    } else {
      return (
        <Highlighter id={this.props.review.id}
          searchWords={target}
          textToHighlight={sentence} />
      )
    }
  }

  render() {
    let gender = this.props.review.gender === 1 ? 'men' : 'women';
    let profilePicNum = this.props.review.profilePicNum;
    let url = `https://s3.us-east-2.amazonaws.com/wtsesun/fakeprofilepics/${gender}/${profilePicNum}.jpg`;
    return (
      <div className={style.review} key={this.props.review.id}>
        <div className={style.pictureNameAndDate}>
          <div className={style.profile_picture} key={this.props.review.id + 'p'}
          style={{backgroundImage:`url(${url})`}}
          ></div>
          <div className={style.nameAndDate}>
            <div className={style.name} key={this.props.review.id + 'n'}>{this.props.review.name}</div>
            <div className={style.date} key={this.props.review.id + 'd'}>{this.props.review.date}</div>
          </div>
        </div>
        <div className={style.sentence}>
          {this.handleSearchTextInSentence()}
        </div>
        <div className={style.seperator24}></div>
      </div>
    );
  }
}



export default ShowOneReview;
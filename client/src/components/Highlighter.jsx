import React from 'react';
import style from '../../dist/style.css';

class Highlighter extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    //normal function adds words except searched word into a span tag
    const normal = (str, count) => (
      <span key={this.props.id+'sp'+count}>{str}</span>
    )

    //highlight functions adds searched word into a strong tag
    const highlight = ( children, count ) => (
      <strong key={this.props.id+'hi'+count} className={style['highlighted-text']}>{children}</strong>
    );

    // highlightedSentence stores normal words and highlighted word.
    let highlightedSentence = [];
    let normalWords = '';

    //split each words into an array including space and punctuations
    let words = this.props.textToHighlight.split(/\b/);

    //iterate through the words and seperate searched words and other words.
    for (let i = 0; i < words.length; i++) {
      if(words[i] === this.props.searchWords) {
        if (normalWords.length) {
          highlightedSentence.push(normal(normalWords, i));
          normalWords = '';
        }
        highlightedSentence.push(highlight(words[i], i));
      } else {
        if (i === words.length - 1) {
          normalWords += words[i];
          highlightedSentence.push(normal(normalWords, i));
        } else {
          normalWords += words[i];
        }
      }
    }

    return (
      <div key={this.props.id + 's'}>{highlightedSentence}</div>
    )
  }
}


export default Highlighter;
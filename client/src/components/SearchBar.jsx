import React from 'react';
class SearchBar extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      search_border_color: "rgb(235, 235, 235)"
    }
  }
  // <SearchBar original_data={this.state.original_data} 
  //           showSearchResult={this.showSearchResult}
  //           editSearchText={this.editSearchText} 
  //           dataSlicer={this.dataSlicer.bind(this)}
  //           search_text={this.state.search_text}
  //           clearSearchText={this.clearSearchText}/>


  submitSearch(e) {
    e.preventDefault();
    let res = [];
    const data = this.props.original_data;
    const search_text = this.props.search_text;
    //edge case: if search_text is empty
    if (search_text === '') {
      this.props.dataSlicer(data);
      return;
    }
    data.forEach((item) => {
      let words = item.sentence.split(/\b/);
      if (words.indexOf(search_text) >= 0) {
        res.push(item);
      }
    });
    this.props.dataSlicer(res);
    this.props.setCurPage(0);
  }

  testOnFunction(e) {
    e.preventDefault();
    // console.log('hi')
    this.setState({
      search_border_color: "#008489",
    })
  }
  //add a event listener: change color back while click outside.
  componentDidMount() {
    document.addEventListener('mousedown', this.clickOutside.bind(this));
  }

  clickOutside() {
    this.setState({
      search_border_color: "rgb(235, 235, 235)",
    })
  }

  componentWillMount() {
    document.removeEventListener('mousedown', this.clickOutside);
  }





  render() {
    const scopeStyle = {height: "1em", width: "1em", display: "block", fill: "currentcolor",}
    if (this.props.search_text.length === 0) {
      return (
        <div className='outerSearchBar' style={{ borderColor: this.state.search_border_color }}>
          <span>
            <span className="searchBar">
              <span className="scopeImg">
              <svg viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false" style={scopeStyle}><path d="m10.4 18.2c-4.2-.6-7.2-4.5-6.6-8.8.6-4.2 4.5-7.2 8.8-6.6 4.2.6 7.2 4.5 6.6 8.8-.6 4.2-4.6 7.2-8.8 6.6m12.6 3.8-5-5c1.4-1.4 2.3-3.1 2.6-5.2.7-5.1-2.8-9.7-7.8-10.5-5-.7-9.7 2.8-10.5 7.9-.7 5.1 2.8 9.7 7.8 10.5 2.5.4 4.9-.3 6.7-1.7v.1l5 5c .3.3.8.3 1.1 0s .4-.8.1-1.1" fillRule="evenodd"></path></svg>
              </span>
              <form onSubmit={this.submitSearch.bind(this)}>
                <input className="searchTextArea" type="text" id="searchTextArea" placeholder="Search reviews"
                  onClick={this.testOnFunction.bind(this)}
                  onChange={this.props.editSearchText}></input>
              </form>
            </span>
          </span>
        </div>
      )
    } else {
      const divStyle = { height: '12px', width: '12px', display: 'block', fill: 'rgb(118, 118, 118)', }

      //show cancellation button while the text bar in not empty
      return (
        <div className='outerSearchBar' style={{ borderColor: this.state.search_border_color }}>
          <span>
            <span className="searchBar">
            <span className="scopeImg">
            <svg viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false" style={scopeStyle}><path d="m10.4 18.2c-4.2-.6-7.2-4.5-6.6-8.8.6-4.2 4.5-7.2 8.8-6.6 4.2.6 7.2 4.5 6.6 8.8-.6 4.2-4.6 7.2-8.8 6.6m12.6 3.8-5-5c1.4-1.4 2.3-3.1 2.6-5.2.7-5.1-2.8-9.7-7.8-10.5-5-.7-9.7 2.8-10.5 7.9-.7 5.1 2.8 9.7 7.8 10.5 2.5.4 4.9-.3 6.7-1.7v.1l5 5c .3.3.8.3 1.1 0s .4-.8.1-1.1" fillRule="evenodd"></path></svg>
            </span>
              <form className="inlineForm" onSubmit={this.submitSearch.bind(this)}>
                <input className="searchTextArea" type="text" id="searchTextArea" placeholder="Search reviews"
                  onClick={this.testOnFunction.bind(this)}
                  onChange={this.props.editSearchText}></input>
              </form>
              <button className="cancelSearchButton" onClick={this.props.clearSearchText}>
                <svg viewBox="0 0 24 24" role="img" aria-label="Close" focusable="false" style={divStyle}>
                  <path d="m23.25 24c-.19 0-.38-.07-.53-.22l-10.72-10.72-10.72 10.72c-.29.29-.77.29-1.06 0s-.29-.77 0-1.06l10.72-10.72-10.72-10.72c-.29-.29-.29-.77 0-1.06s.77-.29 1.06 0l10.72 10.72 10.72-10.72c.29-.29.77-.29 1.06 0s .29.77 0 1.06l-10.72 10.72 10.72 10.72c.29.29.29.77 0 1.06-.15.15-.34.22-.53.22" fillRule="evenodd" />
                </svg>
              </button>
            </span>
          </span>
        </div>
      )
    }
  }
}

export default SearchBar;
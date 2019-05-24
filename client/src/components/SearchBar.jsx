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
  }

  testOnFunction(e) {
    e.preventDefault();
    // console.log('hi')
    this.setState({
      search_border_color: "#008489",
    })
  }
  // onChange={this.props.editSearchText}
  render() {
    if (this.props.search_text.length === 0) {
      return (
        <div className='outerSearchBar' style={{ borderColor: this.state.search_border_color }}>
          <span className="searchBar">
            <span>
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
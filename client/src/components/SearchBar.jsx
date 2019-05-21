class SearchBar extends React.Component {
  constructor(props) {
    super(props);
  }
  // <SearchBar original_data={this.state.original_data} 
  //           showSearchResult={this.showSearchResult}
  //           editSearchText={this.editSearchText} 
  //           dataSlicer={this.dataSlicer.bind(this)}
  //           search_text={this.state.search_text}/>
  

  submitSearch(e) {
    e.preventDefault();
    let res = [];
    const data = this.props.original_data;
    const search_text = this.props.search_text;
    data.forEach((item) => {
      if(item.sentence.indexOf(search_text) >= 0) {
        res.push(item);
      }
    });
    this.props.dataSlicer(res);
  }

  render() {
    return (
      <span className="searchBar">
        <form onSubmit={this.submitSearch.bind(this)}>
          <input type="text" placeholder="Search reviews" onChange={this.props.editSearchText}></input>
        </form>
      </span>
    )
  }
}

export default SearchBar;
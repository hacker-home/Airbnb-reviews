class SearchBar extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      overall_rating: 0,
    }
  }

  render() {
    return (
      <span className="searchBar">
        <input type="text"></input>
        <input type="submit"></input>
      </span>
    )
  }
}

export default SearchBar;
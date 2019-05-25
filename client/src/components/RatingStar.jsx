class RatingStar extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <span className='StarBox'>
        <span className='outerStar'>
          <span className='innerStar' style={{width: `${this.props.rating * 22}px`}}></span>
        </span>
      </span>
    )
  }
}

export default RatingStar;
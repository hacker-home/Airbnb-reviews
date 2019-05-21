import buttonRender from './buttonRender.jsx'
class PageButtons extends React.Component {
  constructor(props) {
    super(props);
  }


  //Props from parent: <PageButtons curPage={this.state.curPage} data={this.props.data} changePage={this.changePage.bind(this)/>
  render() {
    let curPage = this.props.curPage;
    let totalPages = this.props.data.length;
    let isReview = this.props.data[0].length;
    let changePage = this.props.changePage;
    return (
      <div>{buttonRender(curPage, totalPages, isReview, changePage)}</div>
    )
  }
}

export default PageButtons;
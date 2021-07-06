import buttonRender from './buttonRender.jsx'
import React from 'react';
class PageButtons extends React.Component {
  constructor(props) {
    super(props);
  }


  //Props from parent: <PageButtons curPage={this.state.curPage} data={this.props.data} changePage={this.changePage.bind(this)/>
  render() {
    let curPage = this.props.curPage;
    let totalPages = this.props.data.length;
    let isReviewed = this.props.data[0].length;
    let changePage = this.props.changePage;
    return (
      <div>{buttonRender(curPage, totalPages, isReviewed, changePage)}</div>
    )
  }
}

export default PageButtons;
let buttonRender = function (curPage, totalPages, isReview, changePage) {

  //  Edge case: if no reviews, Print out "No reviews" and exit buttonRender
  if (!isReview) {
    return (<span>No reviews</span>);
  };

  //  leftButtons function: 
  //  1) if current page is the first page, function will not return "<" button
  //  2) if current page is not the first page, return both "<" and "1" button
  let leftButtons = function (curPage) {
    if (curPage === 0) {
      return (<input type="button" value="1" onClick={changePage}></input>)
    } else {
      return (
        <span>
          <input type="button" value="<" onClick={changePage}></input>
          <input type="button" value="1" onClick={changePage}></input>
        </span>
      )
    }
  }

  // middleButtons function: 
  // 1) works when 0 < curPage < totalPages
  // 2) if current page is not the first page, return both "<" and "1" button
  let middleButtons = function (curPage) {
    //case 1: only first and last pages -> no middle page
    if (totalPages < 3) {
      return;
    } else if (totalPages === 3) {
      return <input type="button" value="2" onClick={changePage}></input>;
    } else if (totalPages === 4) {
      return (<span>
        <input type="button" value="2" onClick={changePage}></input>
        <input type="button" value="3" onClick={changePage}></input>
      </span>);
    } else if (totalPages === 5 && curPage === 2) {
      return (<span>
        <input type="button" value="2" onClick={changePage}></input>
        <input type="button" value="3" onClick={changePage}></input>
        <input type="button" value="4" onClick={changePage}></input>
      </span>);
    } else if (totalPages === 6 && curPage === 3) {
      return (<span>
        <input type="button" value="2" onClick={changePage}></input>
        <input type="button" value="3" onClick={changePage}></input>
        <input type="button" value="4" onClick={changePage}></input>
        <input type="button" value="5" onClick={changePage}></input>
      </span>);
    }

    //if curPage is the first page
    if (curPage === 0 || curPage === 1) {
      //case 4:  more than 4 pages -> return 2 middle pages and "⋯"
      return (<span>
        <input type="button" value="2" onClick={changePage}></input>
        <input type="button" value="3" onClick={changePage}></input>
        <span>⋯</span>
      </span>);
    }

    // TODO: if curPage is last page
    if (curPage === totalPages - 1 || curPage === totalPages - 2) {
      return (<span>
        <span>⋯</span>
        <input type="button" value={totalPages - 2} onClick={changePage}></input>
        <input type="button" value={totalPages - 1} onClick={changePage}></input>
      </span>);
    }

    // TODO: 1st page < curPage < totalPages
    if (curPage === 2) {
      return (<span>
        <input type="button" value="2" onClick={changePage}></input>
        <input type="button" value="3" onClick={changePage}></input>
        <input type="button" value="4" onClick={changePage}></input>
        <span>⋯</span>
      </span>
      )
    } else if (curPage === 3) {
      return (<span>
        <input type="button" value="2" onClick={changePage}></input>
        <input type="button" value="3" onClick={changePage}></input>
        <input type="button" value="4" onClick={changePage}></input>
        <input type="button" value="5" onClick={changePage}></input>
        <span>⋯</span>
      </span>
      )
    } else if (curPage === totalPages - 3) {
      return (
        <span>
          <span>⋯</span>
          <input type="button" value={totalPages - 3} onClick={changePage}></input>
          <input type="button" value={totalPages - 2} onClick={changePage}></input>
          <input type="button" value={totalPages - 1} onClick={changePage}></input>
        </span>
      );
    } else if (curPage === totalPages - 4) {
      return (
        <span>
          <span>⋯</span>
          <input type="button" value={totalPages - 4} onClick={changePage}></input>
          <input type="button" value={totalPages - 3} onClick={changePage}></input>
          <input type="button" value={totalPages - 2} onClick={changePage}></input>
          <input type="button" value={totalPages - 1} onClick={changePage}></input>
        </span>
      );
    } else {
      return (
        <span>
          <span>⋯</span>
          <input type="button" value={curPage} onClick={changePage}></input>
          <input type="button" value={curPage + 1} onClick={changePage}></input>
          <input type="button" value={curPage + 2} onClick={changePage}></input>
          <span>⋯</span>
        </span>
      )
    }
  }

  // rightButtons function: 
  // 1) if current page = last page, only show last page button;
  // 2) else: show last page button and ">" button
  let rightButtons = function (curPage) {
    if (curPage === totalPages - 1) {
      return <input type="button" value={totalPages} onClick={changePage}></input>
    } else {
      return (<span>
        <input type="button" value={totalPages} onClick={changePage}></input>
        <input type="button" value=">" onClick={changePage}></input>
      </span>
      )
    }
  }

  return (<div>
    {leftButtons(curPage)}
    {middleButtons(curPage)}
    {rightButtons(curPage)}
  </div>)
}

export default buttonRender;
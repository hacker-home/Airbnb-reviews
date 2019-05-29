import React from 'react';
import style from '../../dist/style.css';

let buttonRender = function (curPage, totalPages, isReview, changePage) {
  const curPageStyle = {background:'#008489', color:'white'}
  //  Edge case: if no reviews, Print out "No reviews" and exit buttonRender
  if (!isReview) {
    return (<span></span>);
  };

  //  leftButtons function: 
  //  1) if current page is the first page, function will not return "<" button
  //  2) if current page is not the first page, return both "<" and "1" button
  let leftButtons = function (curPage) {
    if (curPage === 0) {
      return (<input style={curPageStyle} className={style.pageButton} type="button" value="1" onClick={changePage}></input>)
    } else {
      return (
        <span>
          <input className={style.arrowButton} type="button" value="＜" onClick={changePage}></input>
          <input className={style.pageButton} type="button" value="1" onClick={changePage}></input>
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
      if(curPage !== 1) {
        return <input className={style.pageButton} type="button" value="2" onClick={changePage}></input>;
      } else {
        return <input style={curPageStyle} className={style.pageButton} type="button" value="2" onClick={changePage}></input>;
      }
    } else if (totalPages === 4) {
      if(curPage !== 1 || curPage !== 2) {
      return (<span>
        <input className={style.pageButton} type="button" value="2" onClick={changePage}></input>
        <input className={style.pageButton} type="button" value="3" onClick={changePage}></input>
      </span>);
      } else if (curPage === 1) {
        return (<span>
          <input style={curPageStyle} className={style.pageButton} type="button" value="2" onClick={changePage}></input>
          <input className={style.pageButton} type="button" value="3" onClick={changePage}></input>
        </span>);
      } else if (curPage === 2) {
        return (<span>
          <input className={style.pageButton} type="button" value="2" onClick={changePage}></input>
          <input style={curPageStyle} className={style.pageButton} type="button" value="3" onClick={changePage}></input>
        </span>);
      }
    } else if (totalPages === 5 && curPage === 2) {
      return (<span>
        <input className={style.pageButton} type="button" value="2" onClick={changePage}></input>
        <input style={curPageStyle} className={style.pageButton} type="button" value="3" onClick={changePage}></input>
        <input className={style.pageButton} type="button" value="4" onClick={changePage}></input>
      </span>);
    } else if (totalPages === 6 && curPage === 3) {
      return (<span>
        <input className={style.pageButton} type="button" value="2" onClick={changePage}></input>
        <input className={style.pageButton} type="button" value="3" onClick={changePage}></input>
        <input style={curPageStyle} className={style.pageButton} type="button" value="4" onClick={changePage}></input>
        <input className={style.pageButton} type="button" value="5" onClick={changePage}></input>
      </span>);
    }

    //if curPage is the first page
    if (curPage === 0) {
      //case 4:  more than 4 pages -> return 2 middle pages and "⋯"
      return (<span>
        <input className={style.pageButton} type="button" value="2" onClick={changePage}></input>
        <input className={style.pageButton} type="button" value="3" onClick={changePage}></input>
        <span>⋯</span>
      </span>);
    }
    if (curPage === 1) {
      //case 4:  more than 4 pages -> return 2 middle pages and "⋯"
      return (<span>
        <input style={curPageStyle} className={style.pageButton} type="button" value="2" onClick={changePage}></input>
        <input className={style.pageButton} type="button" value="3" onClick={changePage}></input>
        <span>⋯</span>
      </span>);
    }

    // TODO: if curPage is last page
    if (curPage === totalPages - 1) {
      return (<span>
        <span>⋯</span>
        <input className={style.pageButton} type="button" value={totalPages - 2} onClick={changePage}></input>
        <input className={style.pageButton} type="button" value={totalPages - 1} onClick={changePage}></input>
      </span>);
    }
    if (curPage === totalPages - 2) {
      return (<span>
        <span>⋯</span>
        <input className={style.pageButton} type="button" value={totalPages - 2} onClick={changePage}></input>
        <input style={curPageStyle} className={style.pageButton} type="button" value={totalPages - 1} onClick={changePage}></input>
      </span>);
    }

    // TODO: 1st page < curPage < totalPages
    if (curPage === 2) {
      return (<span>
        <input className={style.pageButton} type="button" value="2" onClick={changePage}></input>
        <input style={curPageStyle} className={style.pageButton} type="button" value="3" onClick={changePage}></input>
        <input className={style.pageButton} type="button" value="4" onClick={changePage}></input>
        <span>⋯</span>
      </span>
      )
    } else if (curPage === 3) {
      return (<span>
        <input className={style.pageButton} type="button" value="2" onClick={changePage}></input>
        <input className={style.pageButton} type="button" value="3" onClick={changePage}></input>
        <input style={curPageStyle} className={style.pageButton} type="button" value="4" onClick={changePage}></input>
        <input className={style.pageButton} type="button" value="5" onClick={changePage}></input>
        <span>⋯</span>
      </span>
      )
    } else if (curPage === totalPages - 3) {
      return (
        <span>
          <span>⋯</span>
          <input className={style.pageButton} type="button" value={totalPages - 3} onClick={changePage}></input>
          <input style={curPageStyle} className={style.pageButton} type="button" value={totalPages - 2} onClick={changePage}></input>
          <input className={style.pageButton} type="button" value={totalPages - 1} onClick={changePage}></input>
        </span>
      );
    } else if (curPage === totalPages - 4) {
      return (
        <span>
          <span>⋯</span>
          <input className={style.pageButton} type="button" value={totalPages - 4} onClick={changePage}></input>
          <input style={curPageStyle} className={style.pageButton} type="button" value={totalPages - 3} onClick={changePage}></input>
          <input className={style.pageButton} type="button" value={totalPages - 2} onClick={changePage}></input>
          <input className={style.pageButton} type="button" value={totalPages - 1} onClick={changePage}></input>
        </span>
      );
    } else {
      return (
        <span>
          <span>⋯</span>
          <input className={style.pageButton} type="button" value={curPage} onClick={changePage}></input>
          <input style={curPageStyle} className={style.pageButton} type="button" value={curPage + 1} onClick={changePage}></input>
          <input className={style.pageButton} type="button" value={curPage + 2} onClick={changePage}></input>
          <span>⋯</span>
        </span>
      )
    }
  }

  // rightButtons function: 
  // 1) if current page = last page, only show last page button;
  // 2) else: show last page button and ">" button
  let rightButtons = function (curPage) {
    if(totalPages === 1) {
      return;
    }
    if (curPage === totalPages - 1) {
      return <input style={curPageStyle} className={style.pageButton} type="button" value={totalPages} onClick={changePage}></input>
    } else {
      return (<span>
        <input className={style.pageButton} type="button" value={totalPages} onClick={changePage}></input>
        <input className={style.arrowButton} type="button" value="＞" onClick={changePage}></input>
      </span>
      )
    }
  }

  return (<div className={style.pageButtonBar}>
    {leftButtons(curPage)}
    {middleButtons(curPage)}
    {rightButtons(curPage)}
  </div>)
}

export default buttonRender;
import App from './components/App.jsx';
import { BrowserRouter, Route, Switch} from 'react-router-dom';
import React from 'react';
import ReactDOM from 'react-dom';

// ReactDOM.render(<BrowserRouter>
//   <Route path = "/reviews/:roomId" component = {App} />
//   </BrowserRouter>, document.getElementById("airbnb_reviews"));


ReactDOM.render(<App />, document.getElementById("airbnb_reviews"));
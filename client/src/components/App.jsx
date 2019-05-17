// import React from 'react';
import axios from 'axios';

class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      rev_data: [],
      room_id: 1
    }
  };

  componentDidMount() {
    axios.get(`http://localhost:3001/reviews/?room_id=${this.state.room_id}`)
      .then((response) => {
        this.setState({
          rev_data : response.data[0].reviews,
        });
      })
      .catch((err) => {
        console.log(err);
      });
  };

  render() {
    return (
      <div className="rew_board">{console.log(this.state.rev_data)}</div>
    )
  };
}

export default App;
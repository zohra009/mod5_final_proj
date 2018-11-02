import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';

import FoodListContainer from './containers/FoodListContainer';
// import Filter from './containers/FoodItem';
// import FoodItem from '.components/FoodItem'

class App extends Component {
  state = {
  foods: []
  }

  componentDidMount() {
    fetch('http://localhost:3000/foods')
    .then(res => res.json())
    .then(foods => this.setState({foods: foods}))
  }
  render() {
    console.log(this.state.foods);
    return (
      <div className="App">
        Your are in App
        <FoodListContainer foods={this.state.foods}/>
      </div>
    );
  }
}

export default App;

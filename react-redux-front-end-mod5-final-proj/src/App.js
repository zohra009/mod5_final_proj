import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';

// import FoodListContainer from './containers/FoodListContainer';
// import Filter from './containers/FoodItem';
// import FoodItem from '.components/FoodItem'

class App extends Component {
  componentDidMount() {
    fetch('https://api.yelp.com/v3/businesses/search?location=NYC&term=food&price=1', {
      headers: {
           "Content-Type": "application/json; charset=utf-8",
           "Authorization" : "Bearer WUf95m0GdtgTkYrA3exWwdVD46pd8tfLuyzpoBAnHLxE0MtAKT58h62Y0Gt7nOoLUAQel1ZK_2AQdn87hD42htnmjJ5xpSp2ITOBr-PdkgWxFXjy3E37KpBoer3ZW3Yx"
         },
    }).then(res => res.json()).then(console.log)
  }
  render() {
    return (
      <div className="App">
        Your are in App
      </div>
    );
  }
}

export default App;

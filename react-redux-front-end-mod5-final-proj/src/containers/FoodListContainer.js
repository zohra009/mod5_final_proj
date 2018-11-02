import React, { Component } from 'react';
import FoodItem from '../components/FoodItem'
import "./FoodListContainer.css"

class FoodListContainer extends Component {

  render() {
    const foodsArr = this.props.foods.map(food => <FoodItem key={food.name} food={food} />)
    return (
      <div>
        You're in your Food List Container
        <div id="categorybar">
          <span>Image</span>
          <span>Restaurant Name</span>
          <span>Location</span>
          <span>Open</span>
        </div>
        {foodsArr}
      </div>
    );
  }

}

export default FoodListContainer;

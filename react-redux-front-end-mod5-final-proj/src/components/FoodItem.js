import React from 'react'
import "./FoodItem.css"

const FoodItem = ({food}) => {
  return (
    <tr>
      <td className="img"><img src={food.image_url} /></td>
      <td>Restaurant Name: {food.name}</td>
      <td>{food.is_closed}</td>
      <td>{food.categories}</td>
      <td>{food.rating}</td>
      <td>{food.price}</td>
      <td>{food.location}</td>
      <td>{food.phone}</td>
    </tr>

  )
}
export default FoodItem;

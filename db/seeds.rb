# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#path for keys


require 'rest-client'
require 'json'
require 'pry'

response = RestClient.get("https://api.yelp.com/v3/businesses/search?location=NYC&term=food&price=1&LIMIT=100",  {authorization: "Bearer #{ENV['yelpApiKey']}"}
)
json_response = JSON.parse(response)

# puts json_response

restaurants = json_response["businesses"]

food_list = []
restaurants.each do |restaurant|
#   puts restaurant["name"]
#   puts restaurant["image_url"]
#   puts restaurant["categories"].map{|category| category["title"]}
#   # byebug
#   puts restaurant["is_closed"]
#   puts restaurant["location"]
#   puts restaurant["rating"]
#   puts restaurant["phone"]
#   puts restaurant["price"]
#   puts ""
#
food_list.push(Food.create(name: restaurant["name"], image_url: restaurant["image_url"], categories: restaurant["categories"].map {|category| category["title"]}, is_closed: restaurant["is_closed"], rating: restaurant["rating"], price: restaurant["price"], location: restaurant["location"], phone: restaurant["phone"]))
end
byebug
0
# food1 = Food.new(name: "vegetarian ramen")
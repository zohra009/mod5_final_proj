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

# this call returns back 50 every time; this returns back restaurants 51-100
response = RestClient.get("https://api.yelp.com/v3/businesses/search?location=NYC&term=food&price=1&limit=50&offset=51",  {authorization: "Bearer #{ENV['yelpApiKey']}"}
)

# this returns back restaurants 1-50
response2 = RestClient.get("https://api.yelp.com/v3/businesses/search?location=NYC&term=food&price=1&limit=50",  {authorization: "Bearer #{ENV['yelpApiKey']}"}
)

food_list = []

i = 1
loop do
  if i < 101
    offset = i
    if i == 1
      response = RestClient.get("https://api.yelp.com/v3/businesses/search?location=NYC&term=food&price=1&limit=50",  {authorization: "Bearer #{ENV['yelpApiKey']}"})
    else
      response = RestClient.get("https://api.yelp.com/v3/businesses/search?location=NYC&term=food&price=1&limit=50&offset=#{i}",  {authorization: "Bearer #{ENV['yelpApiKey']}"})
    end
      json_response = JSON.parse(response)
      restaurants = json_response["businesses"]
      # byebug

      restaurants.each do |restaurant|
        # if restaurant["location"]["address1"] == nil||restaurant["location"]["city"] == nil|| restaurant["location"]["zip_code"]== nil
        #   byebug
        # end

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
      address = restaurant["location"]["display_address"][0]
      # address = restaurant["location"]["address1"]+","+restaurant["location"]["city"]+" "+restaurant["location"]["zip_code"]
      categories = restaurant["categories"].map {|category| category["title"]}.join(", ")
      longitude = restaurant["coordinates"]["longitude"]
      latitude = restaurant["coordinates"]["latitude"]
      # byebug
      food_list.push(Food.create(name: restaurant["name"], image_url: restaurant["image_url"], categories: categories, is_closed: restaurant["is_closed"], rating: restaurant["rating"], longitude: longitude, latitude: latitude, price: restaurant["price"], location: address, phone: restaurant["phone"]))
      end
      i += 50
  else
    break
  end
end

# puts json_response

0

class FoodSerializer <ActiveModel::Serializer
  attributes :name, :image_url, :is_closed, :categories, :rating, :price, :location, :phone
  has_many :user_foods
  has_many :users, through: :user_foods

end

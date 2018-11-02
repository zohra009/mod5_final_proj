class UserSerializer <ActiveModel::Serializer
  attributes :name
  has_many :foods, through: :user_foods
end

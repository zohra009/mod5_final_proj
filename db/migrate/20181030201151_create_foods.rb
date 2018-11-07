class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :image_url
      t.string :is_closed
      t.string :categories
      t.string :rating
      t.string :price
      t.string :location
      t.string :phone
      t.string :longitude
      t.string :latitude



      t.timestamps
    end
  end
end

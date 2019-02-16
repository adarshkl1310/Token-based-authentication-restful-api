class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
     t.string :name
      t.float :price
      t.belongs_to :category, index: true
      t.integer :image_id
      t.string :short_description
      t.text :long_description
      t.boolean :is_active
      t.string :preparation_time
      t.integer :serves
      t.integer :calorie_count
      t.integer :meal_type_id
      t.integer :cuisine_id
      t.integer :spicy_level
      t.boolean :is_new
      t.boolean :is_bestseller
      t.timestamps
    end
  end
end






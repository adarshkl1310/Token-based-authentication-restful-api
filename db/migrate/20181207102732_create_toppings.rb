class CreateToppings < ActiveRecord::Migration[5.2]
  def change
    create_table :toppings do |t|
     t.string :name
     t.float :price
     t.integer :meal_type_id
     t.timestamps
    end
  end
end

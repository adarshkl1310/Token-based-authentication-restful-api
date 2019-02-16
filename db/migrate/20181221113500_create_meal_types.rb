class CreateMealTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :meal_types do |t|
      
      t.integer :image_id
      t.string :name
   
    end
  end
end

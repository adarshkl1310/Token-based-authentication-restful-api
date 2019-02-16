class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.integer :image_id
      t.string :name
      t.text :description
      t.boolean :is_active      
      t.timestamps
    end
  end
end

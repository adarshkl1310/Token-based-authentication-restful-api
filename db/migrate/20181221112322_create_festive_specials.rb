class CreateFestiveSpecials < ActiveRecord::Migration[5.2]
  def change
    create_table :festive_specials do |t|
      
     t.integer :image_id
     t.string :name
     t.text :description
     t.datetime :valid_from
     t.datetime :valid_till
     t.boolean :is_active
     t.timestamps

    end
  end
end

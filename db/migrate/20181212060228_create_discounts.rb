class CreateDiscounts < ActiveRecord::Migration[5.2]
  def change
    create_table :discounts do |t|
      
      t.string :title
      t.boolean :is_active
      t.boolean :is_all
      t.integer :category_id
      t.integer :item_id
      t.float :discount
      t.datetime :valid_from
      t.datetime :valid_till

      t.timestamps
    end
  end
end

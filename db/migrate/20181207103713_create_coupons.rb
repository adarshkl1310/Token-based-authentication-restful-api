class CreateCoupons < ActiveRecord::Migration[5.2]
  def change
    create_table :coupons do |t|
      t.string :code
      t.string :title
      t.string :tagline
      t.text :how_to_use
      t.text :terms_conditions
      t.boolean :is_all
      t.integer :branch_id
      t.integer :user_id
      t.float :discount_amount
      t.float :discount_percent
      t.float :min_cart_value
      t.boolean :is_active
      t.integer :valid_count
      t.boolean :is_referral_reward
      t.datetime :valid_from
      t.datetime :valid_till
      t.timestamps
    end
  end
end
     

class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
    t.integer :cart_id
    t.integer :branch_id
    t.integer :user_id
    t.integer :delivery_address_id
    t.string :order_status
    t.integer :payment_mode_id
    t.string :payment_status
    t.float :total_amount
    t.integer :coupon_id
    t.string :referrel_code
    t.integer :order_feedback_id
    t.datetime :updated_at
    t.datetime :created_at    
    t.timestamps
    end
  end
end

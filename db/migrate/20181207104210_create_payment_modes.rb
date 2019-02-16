class CreatePaymentModes < ActiveRecord::Migration[5.2]
  def change
    create_table :payment_modes do |t|
      t.string :name
    end
  end
end

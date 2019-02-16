class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.text :address1
      t.text :address2
      t.string :landmark
      t.string :city
      t.string :state
      t.string :country
      t.integer :zipcode
      t.string :latitude
      t.string :longitude
    end
  end
end

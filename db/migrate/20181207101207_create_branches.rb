class CreateBranches < ActiveRecord::Migration[5.2]
  def change
    create_table :branches do |t|

      t.string :email
      t.string :phone
      t.integer :address_id
      t.integer :manager_id
      t.boolean :is_disabled
      t.boolean :is_inactive

      t.timestamps
    end
  end
end

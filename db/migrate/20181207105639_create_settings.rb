class CreateSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :settings do |t|
      t.string :meta_name
      t.text :meta_value
    end
  end
end

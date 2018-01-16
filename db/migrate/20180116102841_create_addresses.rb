class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :first_name
      t.string :last_name
      t.text :address
      t.integer :zip_code
      t.string :city
      t.string :country
      t.string :state
      t.integer :phone
      t.string :company

      t.timestamps
    end
  end
end

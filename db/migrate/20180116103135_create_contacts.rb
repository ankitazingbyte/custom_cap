class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.text :street_address
      t.integer :postal_code
      t.string :city
      t.string :state
      t.string :country
      t.string :phone
      t.string :image
      t.string :details

      t.timestamps
    end
  end
end

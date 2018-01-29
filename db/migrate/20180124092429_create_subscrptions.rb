class CreateSubscrptions < ActiveRecord::Migration[5.1]
  def change
    create_table :subscrptions do |t|
      t.string :email
      t.integer :card_number
      t.integer :cvv
      t.string :expiration
      t.string :customer_token
      t.string :recurring_profile_token

      t.timestamps
    end
  end
end

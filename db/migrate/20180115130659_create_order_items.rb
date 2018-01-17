class CreateOrderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :order_items do |t|
      t.integer :quantity
      t.float :unit_price
      t.float :total_price
      t.integer :order_id
      t.integer :user_id
      t.integer :product_id

      t.timestamps
    end
  end
end

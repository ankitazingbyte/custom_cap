class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.float :total
      t.float :sub_total
      t.integer :order_status_id
      t.integer :user_id

      t.timestamps
    end
  end
end

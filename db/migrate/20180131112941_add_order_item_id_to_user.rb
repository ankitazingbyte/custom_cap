class AddOrderItemIdToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :Order_item_id, :integer
  end
end

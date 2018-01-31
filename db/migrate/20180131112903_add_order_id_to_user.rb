class AddOrderIdToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :Order_id, :integer
  end
end

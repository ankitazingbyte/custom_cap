class AddBrandNameToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :brand_name, :string
  end
end

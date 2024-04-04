class AddQuantityToCartedProducts < ActiveRecord::Migration[7.1]
  add_column :carted_products, :quantity, :integer

  def change
  end
end

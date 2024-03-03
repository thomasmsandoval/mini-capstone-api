class AddStockToProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :Stock, :integer
    remove_column :products, :Stock, :integer
  end
end

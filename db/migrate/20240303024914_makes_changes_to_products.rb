class MakesChangesToProducts < ActiveRecord::Migration[7.1]
  def change
    change_column :products, :price, :decimal, precision: 10, scale: 2
    change_column :products, :total, :decimal, precision: 10, scale: 2
  end
end

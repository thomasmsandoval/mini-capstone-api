class RemoveColumFromProducts < ActiveRecord::Migration[7.1]
  def change
    remove_column :products, :Stock, :integer
  end
end

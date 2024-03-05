class RemoveSupplieridFromProducts < ActiveRecord::Migration[7.1]
  def change
    remove_column :products, :supplierid, :integer
  end
end

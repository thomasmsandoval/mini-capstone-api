class Image < ApplicationRecord
  def product
    Product.find_by(id: supplier_id)
  end
end

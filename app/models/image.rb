class Image < ApplicationRecord
  belongs_to :products

  def product
    Product.find_by(id: supplier_id)
  end
end

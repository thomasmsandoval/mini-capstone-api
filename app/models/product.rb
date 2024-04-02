class Product < ApplicationRecord
  # validates :name, presence: true
  # validates :price, presence: true
  # validates :price, numericality: true
  # validates :description, length: { minimum: 20 }
  # validates :quantity, presence: true
  # validates :image_url, presence: true
  belongs_to :supplier
  has_many :images
  has_many :orders
  has_many :category_products

  def is_discounted?
    if price <= 10
      return true
    else
      return false
    end
  end

  def tax
    tax = price * 0.09
  end

  def total
    total = price + tax
  end

  # def images
  #   Image.where(product_id: id)
  # end
end

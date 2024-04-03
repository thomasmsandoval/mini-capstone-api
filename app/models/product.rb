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
  has_many :categories, through: :category_products
  has_many :carted_products
  has_many :orders, through: :carted_products
  has_many :user, through: :carted_products

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

class ProductsController < ApplicationController
  def all_products
    product = "all_products"
    render json: { id: product.id,
                   name: product.name,
                   price: product.price,
                   image_url: product.image_url,
                   description: product.description }
  end
end

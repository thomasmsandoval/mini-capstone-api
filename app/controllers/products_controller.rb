class ProductsController < ApplicationController
  def all_products
    @products = Product.all
    render :index
  end

  def first_product
    @product = Product.first
    render :show
  end

  def second_product
    @product = Product.second
    render :show
  end
end

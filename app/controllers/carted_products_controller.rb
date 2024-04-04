class CartedProductsController < ApplicationController
  def create
    @carted_product = CartedProduct.create(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: params[:status],
      order_id: params[:order_id],
    )
    if @carted_product.valid?
      render json: { message: "Product added to cart" }
    else
      render json: { errors: @carted_product.full_messages }, status: 422
    end
  end

  def index
    @carted_products = carted_product.all
    render :index
  end

  def destroy
    @carted_product = CartedProduct.find_by(id: params[:id])
    @carted_product.destroy
    render json: { message: "Product removed from cart." }
  end
end

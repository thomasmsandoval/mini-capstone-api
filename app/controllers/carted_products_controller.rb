class CartedProductsController < ApplicationController
  def create
    @carted_product = CartedProduct.create(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted",
    )
    if @carted_product.valid?
      render :show
    else
      render json: { message: { errors: @carted_product.full_messages } }, status: 422
    end
  end

  def index
    @carted_products = current_user.carted_products.where(status: "carted")
    if @carted_products
      render :index
    else
      render json: { message: { errors: @carted_products.errors.full_messages } }, status: 422
    end
  end

  def destroy
    carted_product = current_user.carted_products.find_by(id: params[:id])
    carted_product.update(status: "removed")
    render json: { message: "Product removed from cart." }
  end
end

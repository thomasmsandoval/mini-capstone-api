class CartedProductsController < ApplicationController
  def create
    @carted_product = CartedProduct.create(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: params[:status],
      order_id: params[:order_id],
    )
    if @carted_product.save
      render show
    else
      render json: { errors: @carted_product.full_messages }, status: 422
    end
  end
end

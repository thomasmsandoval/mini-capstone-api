class OrdersController < ApplicationController
  def create
    @order = Order.create(
      user_id: params["user_id"],
      product_id: params["product_id"],
      quantity: params["quantity"],
      subtotal: params["subtotal"],
      tax: params["tax"],
      total: params["total"],
    )
    if @order.valid?
      render json: @order.as_json
    else
      render json: { errors: @order.errors.full_mesages }, status: :bad_request
    end
  end

  def show
    @order = Order.find_by(id: params[:id])
    render json: @order.as_json
  end
end

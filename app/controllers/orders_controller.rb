class OrdersController < ApplicationController
  before_action :authenticate_user

  def create
    product = Product.find_by(id: params["product_id"])
    calculated_subtotal = product.price * params["quantity"].to_i
    calculated_tax = calculated_subtotal / 10
    calculated_total = calculated_subtotal + calculated_tax

    @order = Order.create(
      user_id: current_user.id,
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total,
    )
    if @order.valid?
      render :show
    else
      render json: { errors: @order.errors.full_mesages }, status: :bad_request
    end
  end

  def show
    @order = current_user.orders.find_by(id: params[:id])
    render :show
  end

  def index
    @orders = current_user.orders
    render :index
  end
end

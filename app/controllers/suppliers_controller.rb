class SuppliersController < ApplicationController
  def all_suppliers
    @suppliers = Supplier.all
    render :index
  end

  def index
    @suplliers = Supplier.all
    render :index
  end

  def show
    @supplier = Supplier.find_by(id: params[:id])
    render :show
  end

  def create
    @product = Product.create(
      name: params[:name],
      email: params[:email],
      phone_number: params[:phone_number],
      supplier_id: params[:supplier_id],
    )
    render :show
  end

  def update
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.update(
      name: params[:name] || @supplier.name,
      email: params[:email] || @supplier.price,
      phone_number: params[:phone_number] || @supplier.phone_number,
      supplier_id: params[:supplier_id] || @supplier.supplier_id,
    )
    render :show
  end

  def destroy
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.destroy
    render json: { message: "Supplier successfully destroyed" }
  end
end

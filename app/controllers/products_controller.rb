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

  def index
    @products = Product.all
    render :index
  end

  def show
    @product = Product.find_by(id: params[:id])
    render :show
  end

  def create
    @product = Product.create(
      name: "X-Chair",
      price: 399,
      image_url: "https://www.xchair.com/collections/office-chairs/products/xproject-office-chair?XProject-Textile=XProject.UC01&XProject-FrameFinish=XProject.FC1&XProject-Headrest=XProject.HR0&XProject-SeatSize=XProject.SW1&XProject-SeatFoam=XProject.F2&XProject-Mechanism=XProject.F&XProject-ArmType=XProject.AR4&XProject-BaseType=XProject.BT1&XProject-BaseColor=XProject.BC1&XProject-CylinderHeight=XProject.CH1&XProject-CasterType=*XProject.STD&XProject_STD-Casters=XProject.CS6&XProject-Packaging=KD&campaignid=20590349432&adgroupid=&creative=&matchtype=&network=x&device=c&keyword=&gad_source=1&gclid=CjwKCAiArfauBhApEiwAeoB7qDy_yU7_YUFQ8DKP3u19--FHA723x9uCyEYNYiPSxH7WBr-wbmYxYBoC11QQAvD_BwE",
      description: "Chair",
    )
    render :show
  end
end

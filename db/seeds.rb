# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Product.create(name: "X-Chair", price: 399, image_url: "https://www.xchair.com/collections/office-chairs/products/xproject-office-chair?XProject-Textile=XProject.UC01&XProject-FrameFinish=XProject.FC1&XProject-Headrest=XProject.HR0&XProject-SeatSize=XProject.SW1&XProject-SeatFoam=XProject.F2&XProject-Mechanism=XProject.F&XProject-ArmType=XProject.AR4&XProject-BaseType=XProject.BT1&XProject-BaseColor=XProject.BC1&XProject-CylinderHeight=XProject.CH1&XProject-CasterType=*XProject.STD&XProject_STD-Casters=XProject.CS6&XProject-Packaging=KD&campaignid=20590349432&adgroupid=&creative=&matchtype=&network=x&device=c&keyword=&gad_source=1&gclid=CjwKCAiArfauBhApEiwAeoB7qDy_yU7_YUFQ8DKP3u19--FHA723x9uCyEYNYiPSxH7WBr-wbmYxYBoC11QQAvD_BwE", description: "Chair")

Product.create(name: "Adjustable desk", price: 465, image_url: "https://www.uline.com/Product/Detail/H-10244GR/Office-Desks/Pneumatic-Adjustable-Height-Desk-72-x-30-Gray?pricode=WC4751&gadtype=pla&id=H-10244GR&gad_source=1&gclid=CjwKCAiArfauBhApEiwAeoB7qJZP-dxNtqnGKY8YpaH9JGy2af2R2i69cSjTjmM8Zf2GWUJa3dHnvBoCzfcQAvD_BwE", description: "Desk")

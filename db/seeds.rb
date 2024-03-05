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

Product.create(name: "Standing floor mat", price: 88, image_url: "https://www.uline.com/Product/Detail/H-5159/Retail-Mats/Cashier-Mat-2-x-3?pricode=WA9837&gadtype=pla&id=H-5159&gad_source=1&gclid=CjwKCAiArfauBhApEiwAeoB7qEkn1ZZ6DwOHQ_uqR1aeaKMKmEPlMAbC4OALkS1q4YQEsouzPIfFoRoCItAQAvD_BwE", description: "mat")

Product.create(name: "Wireless Phone Charger", price: 42, image_url: "https://www.blueboltchargers.com/products/bolthome-3-in-1-charger?variant=36082625577116&currency=USD&utm_medium=product_sync&utm_source=google&utm_content=sag_organic&utm_campaign=sag_organic&utm_source=google&utm_medium=paid&utm_campaign=17825719569&utm_content=&utm_term=&gadid=&utm_source=google&utm_medium=paid&utm_campaign=17825719569&utm_content=&utm_term=&tw_source=google&tw_adid=&gad_source=4&gclid=CjwKCAiArfauBhApEiwAeoB7qHCAbtYAYA1lAug_1PzhjTo4fPgFaxNGbBaFkEMdfz-Qh35ZiHmuGxoCz5cQAvD_BwE", description: "phone charger")

Supplier.create(name: "Staples", email: "orders@staples.com", phone_number: "800-555-5555")

Supplier.create(name: "Grainger", email: "orders@grainger.com", phone_number: "888-555-2346")

Supplier.creaate(name: "Amazon", email: "info@amazon.com", phone_number: "800-555-8932")

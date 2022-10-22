# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

admin = User.new
admin.first_name = "Admin"
admin.last_name = ""
admin.role = "customer"
admin.email = "estebanlopez_99@hotmail.com"
admin.password = 'koira123'
admin.password_confirmation = 'koira123'
avatar_url = "https://joeschmoe.io/api/v1/#{owner.first_name}"
image_name = "#{admin.first_name}#{admin.last_name}.png"
image = URI.open(avatar_url)
admin.avatar.attach(io: image, filename: image_name, content_type: "image/png")
admin.save

owner = User.new
owner.first_name = "Esteban"
owner.last_name = "Lopez"
owner.role = "customer"
owner.email = "estebanlopez_99@hotmail.com"
owner.password = 'koira123'
owner.password_confirmation = 'koira123'
avatar_url = "https://joeschmoe.io/api/v1/#{owner.first_name}"
image_name = "#{owner.first_name}#{owner.last_name}.png"
image = URI.open(avatar_url)
owner.avatar.attach(io: image, filename: image_name, content_type: "image/png")
owner.save

customer = User.new
customer.first_name = "Pepito"
customer.last_name = "Pérez"
customer.role = "customer"
customer.email = "pepito_99@hotmail.com"
customer.password = 'koira123'
customer.password_confirmation = 'koira123'
avatar_url = "https://joeschmoe.io/api/v1/#{customer.first_name}"
image_name = "#{customer.first_name}#{customer.last_name}.png"
image = URI.open(avatar_url)
customer.avatar.attach(io: image, filename: image_name, content_type: "image/png")
customer.save

business = Business.new
business.name = "Los Pollos Hermanos"
business.address = "Calle 30 C Sur # 50-34"
business.latitude = "1234"
business.longitude = "5678"
owner.role = "seller"
owner.save
business.owner = owner
business.description = "Nice place"
business.type_of_business = "restaurant"
file = URI.open("https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/hc_876x493/public/media/image/2015/05/474316-pollos-hermanos-breaking-bad-pueden-convertirse-restaurante-real.jpg?itok=YA3n0gfV")
business.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
file = URI.open("https://blog-eeuu.com/wp-content/uploads/2018/08/breaking-bad-logo.jpeg")
business.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
business.save

category = Category.create(name: "sea food")

product = ProductOrService.new
product.category = category
product.price = 10
product.business = business
product.name = "Pollo"
product.description = "Crispy Chicken With fries"
file = URI.open("https://www.comedera.com/wp-content/uploads/2018/08/pollo-frito.jpg")
product.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
file = URI.open("https://img.taste.com.au/ol2Jq8ZQ/taste/2016/11/rachel-87711-2.jpeg")
product.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
product.type_product_service = "product"
product.save

purchase = Purchase.new
purchase.buyer = customer
purchase.user_name = "#{customer.first_name} #{customer.last_name}"
purchase.phone = "3215641205"
purchase.date = Date.new(2022, 11, 18)
purchase.time = Time.new(purchase.date.year, purchase.date.month, purchase.date.month, 13, 30, 0, "+09:00").utc
purchase.comments = "Please everything be hot"
purchase.number_of_people = 4
purchase.save

purchase_item = PurchaseItem.new
purchase_item.purchase = purchase
purchase_item.product_or_service = product
purchase_item.save

review1 = Review.new
review1.calification = 4
review1.comment = "It was nice"
review1.purchase = purchase
review1.save

review2 = Review.new
review2.calification = 1
review2.comment = "It was bad"
review2.purchase = purchase
review2.save

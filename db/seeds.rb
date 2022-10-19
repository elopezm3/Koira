# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
owner = User.new
owner.first_name = "Esteban"
owner.last_name = "Lopez"
owner.role = "customer"
owner.email = "estebanlopez_99@hotmail.com"
owner.password = 'koira123'
owner.password_confirmation = 'koira123'
owner.save

customer = User.new
customer.first_name = "Pepito"
customer.last_name = "Pérez"
customer.role = "customer"
customer.email = "pepito_99@hotmail.com"
customer.password = 'koira123'
customer.password_confirmation = 'koira123'
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
business.save

category = Category.create(name: "sea food")

product = ProductOrService.new
product.category = category
product.price = 10
product.business = business
product.name = "Fish"
product.description = "With lemmon"
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

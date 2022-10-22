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
avatar_url = "https://joeschmoe.io/api/v1/#{admin.first_name}"
image_name = "#{admin.first_name}#{admin.last_name}.png"
image = URI.open(avatar_url)
admin.avatar.attach(io: image, filename: image_name, content_type: "image/png")
admin.save

5.times do # 50
  user = User.new
  user.first_name = Faker::Name.first_name
  user.last_name = Faker::Name.last_name
  user.email = Faker::Internet.email
  user.role = ["seller", "customer"].sample
  user.password = 'koira123'
  user.password_confirmation = 'koira123'
  avatar_url = "https://joeschmoe.io/api/v1/#{admin.first_name}"
  image_name = "#{user.first_name}#{user.last_name}.png"
  image = URI.open(avatar_url)
  user.avatar.attach(io: image, filename: image_name, content_type: "image/png")
  user.save
end

restaurants_images = ["https://images.pexels.com/photos/1058435/pexels-photo-1058435.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/1267320/pexels-photo-1267320.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/6127316/pexels-photo-6127316.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/958545/pexels-photo-958545.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/784633/pexels-photo-784633.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/2253643/pexels-photo-2253643.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/541216/pexels-photo-541216.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/735869/pexels-photo-735869.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/1395967/pexels-photo-1395967.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/687824/pexels-photo-687824.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/64208/pexels-photo-64208.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/1833349/pexels-photo-1833349.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/315755/pexels-photo-315755.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/2696064/pexels-photo-2696064.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/299348/pexels-photo-299348.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/1211887/pexels-photo-1211887.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/995743/pexels-photo-995743.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/2122294/pexels-photo-2122294.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/1251196/pexels-photo-1251196.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/1861785/pexels-photo-1861785.jpeg?auto=compress&cs=tinysrgb&w=600"]
bars_images = ["https://images.pexels.com/photos/63633/bar-local-cong-ireland-63633.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/159291/beer-machine-alcohol-brewery-159291.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/1283219/pexels-photo-1283219.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/260922/pexels-photo-260922.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/1089930/pexels-photo-1089930.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/1267693/pexels-photo-1267693.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/1267360/pexels-photo-1267360.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/1267323/pexels-photo-1267323.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/1267265/pexels-photo-1267265.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/301692/pexels-photo-301692.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/274194/pexels-photo-274194.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/2079453/pexels-photo-2079453.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/1301547/pexels-photo-1301547.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/340996/pexels-photo-340996.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/2796105/pexels-photo-2796105.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/1128259/pexels-photo-1128259.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/3355400/pexels-photo-3355400.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/2611814/pexels-photo-2611814.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/1267342/pexels-photo-1267342.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/946118/pexels-photo-946118.jpeg?auto=compress&cs=tinysrgb&w=600"]
5.times do # 30
  business = Business.new
  business.type_of_business = ["restaurant", "bar"].sample
  business.address = Faker::Address.street_address
  if business.type_of_business == "restaurant"
    business.name = Faker::Restaurant.name
    business.description = Faker::Restaurant.description
    5.times do
      photo_url = restaurants_images.sample
      photo_name = "#{business.name}#{rand(1..100)}.png"
      photo = URI.open(photo_url)
      business.photos.attach(io: photo, filename: photo_name, content_type: "image/png")
    end
  else
    business.name = "Bar #{Faker::Restaurant.name}"
    business.description = Faker::Restaurant.description
    5.times do
      photo_url = bars_images.sample
      photo_name = "#{business.name}#{rand(1..100)}.png"
      photo = URI.open(photo_url)
      business.photos.attach(io: photo, filename: photo_name, content_type: "image/png")
    end
  end
  sellers = User.where(role: "seller")
  business.owner = sellers.sample
  business.save
end


product = ProductOrService.new
product.category = category
product.price = 10
product.business = business
product.name = Faker::Restaurant.name # buscar faker product
product.description = Faker::Restaurant.description # buscar el faker product
file = 


=begin

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
=end

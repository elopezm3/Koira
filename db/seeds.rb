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

food_categories = [["Sea", "https://images.pexels.com/photos/566345/pexels-photo-566345.jpeg?auto=compress&cs=tinysrgb&w=1600"], ["Fast", "https://images.pexels.com/photos/750073/pexels-photo-750073.jpeg?auto=compress&cs=tinysrgb&w=1600"], ["Italian", "https://images.pexels.com/photos/2295285/pexels-photo-2295285.jpeg?auto=compress&cs=tinysrgb&w=1600"], ["Mexican", "https://images.pexels.com/photos/2092897/pexels-photo-2092897.jpeg?auto=compress&cs=tinysrgb&w=1600"], ["Oriental", "https://images.pexels.com/photos/2092897/pexels-photo-2092897.jpeg?auto=compress&cs=tinysrgb&w=1600"], ["Chinese", "https://images.pexels.com/photos/33162/food-restaurant-menu-asia.jpg?auto=compress&cs=tinysrgb&w=1600"]]
food_categories.each do |f_category|
  category = Category.new
  category.name = f_category[0]
  photo_url = f_category[1]
  photo_name = "#{f_category[0]}#{rand(1..100)}.png"
  photo = URI.open(photo_url)
  category.photo.attach(io: photo, filename: photo_name, content_type: "image/png")
  category.save
end
categories = Category.all
food_images = ["https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&w=600","https://images.pexels.com/photos/461198/pexels-photo-461198.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/1624487/pexels-photo-1624487.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/1565982/pexels-photo-1565982.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/255501/pexels-photo-255501.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/1633578/pexels-photo-1633578.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/315755/pexels-photo-315755.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/1099680/pexels-photo-1099680.jpeg?auto=compress&cs=tinysrgb&w=600", "https://media.istockphoto.com/photos/table-top-view-of-spicy-food-picture-id1316145932?b=1&k=20&m=1316145932&s=612x612&w=0&h=46RQvBvA9rV7LBhzZZdbG5SeCZErZqmopUKOQTF6oTc=", "https://media.istockphoto.com/photos/foods-high-in-vitamin-c-picture-id1270726834?b=1&k=20&m=1270726834&s=612x612&w=0&h=2Qq3Vv0-JleyBmgtiLPES7ioTjZ1cz3rpjNIvWlxtGU=", "https://media.istockphoto.com/photos/paleo-diet-healthy-food-background-picture-id1301565375?b=1&k=20&m=1301565375&s=612x612&w=0&h=f4ANJ7QrvqDjVtH0dzIg0z3k5id_H_ORiPrmrma7gFA=", "https://media.istockphoto.com/photos/top-view-of-tomato-salad-arugula-avocado-lemon-in-white-plate-on-pink-picture-id1330176470?b=1&k=20&m=1330176470&s=612x612&w=0&h=ryhSWbpCdkc_obTYB5uTkOmWimJaIgSfp7BveK-qKX0=", "https://images.pexels.com/photos/1279330/pexels-photo-1279330.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/958545/pexels-photo-958545.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/357573/pexels-photo-357573.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/1640772/pexels-photo-1640772.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/842571/pexels-photo-842571.jpeg?auto=compress&cs=tinysrgb&w=600https://images.pexels.com/photos/1640774/pexels-photo-1640774.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/1640774/pexels-photo-1640774.jpeg?auto=compress&cs=tinysrgb&w=600"]
drink_images = ["https://images.pexels.com/photos/338713/pexels-photo-338713.jpeg?auto=compress&cs=tinysrgb&w=1600", "https://images.pexels.com/photos/340996/pexels-photo-340996.jpeg?auto=compress&cs=tinysrgb&w=1600", "https://images.pexels.com/photos/109275/pexels-photo-109275.jpeg?auto=compress&cs=tinysrgb&w=1600", "https://images.pexels.com/photos/461415/pexels-photo-461415.jpeg?auto=compress&cs=tinysrgb&w=1600", "https://images.pexels.com/photos/1187766/pexels-photo-1187766.jpeg?auto=compress&cs=tinysrgb&w=1600", "https://images.pexels.com/photos/616836/pexels-photo-616836.jpeg?auto=compress&cs=tinysrgb&w=1600", "https://images.pexels.com/photos/339696/pexels-photo-339696.jpeg?auto=compress&cs=tinysrgb&w=1600", "https://images.pexels.com/photos/616840/pexels-photo-616840.jpeg?auto=compress&cs=tinysrgb&w=1600", "https://images.pexels.com/photos/128242/pexels-photo-128242.jpeg?auto=compress&cs=tinysrgb&w=1600", "https://images.pexels.com/photos/1194030/pexels-photo-1194030.jpeg?auto=compress&cs=tinysrgb&w=1600", "https://images.pexels.com/photos/736188/pexels-photo-736188.jpeg?auto=compress&cs=tinysrgb&w=1600", "https://images.pexels.com/photos/736188/pexels-photo-736188.jpeg?auto=compress&cs=tinysrgb&w=1600", "https://images.pexels.com/photos/357577/pexels-photo-357577.jpeg?auto=compress&cs=tinysrgb&w=1600", "https://images.pexels.com/photos/1304540/pexels-photo-1304540.jpeg?auto=compress&cs=tinysrgb&w=1600", "https://images.pexels.com/photos/110472/pexels-photo-110472.jpeg?auto=compress&cs=tinysrgb&w=1600", "https://images.pexels.com/photos/2480828/pexels-photo-2480828.jpeg?auto=compress&cs=tinysrgb&w=1600", "https://images.pexels.com/photos/1233319/pexels-photo-1233319.jpeg?auto=compress&cs=tinysrgb&w=1600", "https://images.pexels.com/photos/602750/pexels-photo-602750.jpeg?auto=compress&cs=tinysrgb&w=1600", "https://images.pexels.com/photos/2109099/pexels-photo-2109099.jpeg?auto=compress&cs=tinysrgb&w=1600", "https://images.pexels.com/photos/1189257/pexels-photo-1189257.jpeg?auto=compress&cs=tinysrgb&w=1600"]
services = [["Marriage night", "20 dishes and 20 drinks of your choice"], ["Date night", "2 dishes, 2 drinks and 2 desserts of your choice"], ["Family Combo", "Big meal for 5 people "], ["Halloween dinner", "Special meal from the house (limited for this month)"], ["Happy Experience", "50 drinks of your choice"], ["Free drinks", "All you can drink in 30 minutes"]]
services_images = ["https://images.pexels.com/photos/8204317/pexels-photo-8204317.jpeg?auto=compress&cs=tinysrgb&w=600","https://images.pexels.com/photos/8204318/pexels-photo-8204318.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/5713659/pexels-photo-5713659.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/7061746/pexels-photo-7061746.jpeg?auto=compress&cs=tinysrgb&w=600", "https://media.istockphoto.com/photos/we-are-going-to-party-as-if-theres-no-tomorrow-picture-id1279483477?b=1&k=20&m=1279483477&s=612x612&w=0&h=h5oLCfgFa48ovozg2-SRDvDKSChjtNVQjSDvHiuNjSY=", "https://media.istockphoto.com/photos/lady-at-the-new-years-eve-party-picture-id1193488504?k=20&m=1193488504&s=612x612&w=0&h=RHejo66iGbqs70I2UnYrAowMdWH9BaCfrtyz7n_i5Io=", "https://media.istockphoto.com/photos/friends-make-the-world-a-better-place-picture-id974949758?k=20&m=974949758&s=612x612&w=0&h=aKHORxG_wWLCpstH8-cMRL_dIyAjNTx4QWQefqyVdhQ=", "https://media.istockphoto.com/photos/shiny-new-year-celebration-picture-id1189941811?k=20&m=1189941811&s=612x612&w=0&h=lelOI2qCfg0_lmgk3gRg4YLdTE9os0Jt91JlEKw9x24=", "https://media.istockphoto.com/photos/rock-concert-picture-id1155892990?k=20&m=1155892990&s=612x612&w=0&h=n4efaRKNIiun0R3j2aFAusCAmI5RtDX9Cr410LcfOwI=", "https://media.istockphoto.com/photos/couple-at-christmas-picture-id527012595?k=20&m=527012595&s=612x612&w=0&h=1P15Hd73P7rr9dh732xzIQ7vQbVsT7t33-2SxgRY6VM=", "https://media.istockphoto.com/photos/friends-night-out-at-karaoke-dance-bar-picture-id1403519680?k=20&m=1403519680&s=612x612&w=0&h=sXWtFA4jM3GdoG6XXfS52FXOkHCkW-MwtpNRR5rewbg=", "https://media.istockphoto.com/photos/young-people-in-colorful-beams-on-lasertag-arena-picture-id981864242?k=20&m=981864242&s=612x612&w=0&h=7Zx7uTsRM9kykDPd0Oy0zYdoVS7JeCi0Qx00elPIjtU=", "https://media.istockphoto.com/photos/back-view-of-happy-women-talking-on-a-music-festival-at-night-picture-id1404156872?k=20&m=1404156872&s=612x612&w=0&h=8Kx-tXPbuwnRbYKk1M06xazFWK8UiMmSpj5XzqPRFZM=", "https://media.istockphoto.com/photos/people-in-vests-and-with-laser-pistols-playing-emotionally-laser-picture-id1198282405?k=20&m=1198282405&s=612x612&w=0&h=a_ij2l0Oa1mhTOiBuUAl4N5awhMShMVNS9iVuaH2jKc=", "https://media.istockphoto.com/photos/selfie-with-my-girls-picture-id1225854746?k=20&m=1225854746&s=612x612&w=0&h=pBsPc-K_ggyXSE93UEQeWk4HJnHNcBUPd_Dgr_eOOfg=", "https://media.istockphoto.com/photos/couple-on-a-date-picture-id871870942?k=20&m=871870942&s=612x612&w=0&h=9tYAYQoSbGuH0k6ydsne9Qed2VjScpR8lzzuZRSSW6g=", "https://media.istockphoto.com/photos/couple-on-a-date-picture-id871873834?k=20&m=871873834&s=612x612&w=0&h=NsvZOx4JZdd86wu7kBG-9BuQGhtvkfK9praGzdunedI=", "https://media.istockphoto.com/photos/romantically-proposing-picture-id505049025?k=20&m=505049025&s=612x612&w=0&h=lmMW_g9XDwoiMAsMX9M3cSKZzwTMYTNQI2UrlGrDWcA=", "https://images.pexels.com/photos/4112237/pexels-photo-4112237.jpeg?auto=compress&cs=tinysrgb&w=600", "https://images.pexels.com/photos/7706438/pexels-photo-7706438.jpeg?auto=compress&cs=tinysrgb&w=600"]

businesses = Business.all
businesses.each do |business|
  5.times do
    food = ProductOrService.new
    food.type_product_service = "product"
    food.type_of_product = "food"
    food.category = categories.sample
    food.price = rand(10..20)
    food.name = Faker::Food.dish
    food.description = Faker::Food.description
    food.business = business
    5.times do
      photo_url = food_images.sample
      photo_name = "#{food.name}#{rand(1..100)}.png"
      photo = URI.open(photo_url)
      food.photos.attach(io: photo, filename: photo_name, content_type: "image/png")
    end
    food.save
  end
  5.times do
    drink = ProductOrService.new
    drink.type_product_service = "product"
    drink.type_of_product = "drink"
    drink.category = categories.sample
    drink.price = rand(10..20)
    drink.name = Faker::Beer.name
    drink.description = Faker::Beer.style
    drink.business = business
    5.times do
      photo_url = drink_images.sample
      photo_name = "#{drink.name}#{rand(1..100)}.png"
      photo = URI.open(photo_url)
      drink.photos.attach(io: photo, filename: photo_name, content_type: "image/png")
    end
    drink.save
  end
  2.times do
    service = ProductOrService.new
    service.type_product_service = "service"
    service.category = categories.sample
    service.price = rand(40..60)
    service_sample = services.sample
    service.name = service_sample[0]
    service.description = service_sample[1]
    service.business = business
    service.type_of_product = ""
    5.times do
      photo_url = services_images.sample
      photo_name = "#{service.name}#{rand(1..100)}.png"
      photo = URI.open(photo_url)
      service.photos.attach(io: photo, filename: photo_name, content_type: "image/png")
    end
    service.save
  end
end

reviews_hash = {1 => "Awful", 2 => "It was very bad", 3 => "Not so bad", 4 => "Nice product", 5 => "Amazing"}
5.times do # 100
  purchase = Purchase.new
  buyer = User.all.sample
  purchase.buyer = buyer
  purchase.user_name = "#{buyer.first_name} #{buyer.last_name}"
  purchase.phone = Faker::PhoneNumber.cell_phone
  date = Date.tomorrow + (rand * 21)
  purchase.date = date
  purchase.time = Time.new(date.year, date.month, date.month, 13, 30, 0, "+09:00").utc
  purchase.comments = Faker::TvShows::Friends.quote
  purchase.number_of_people = rand(1..10)
  purchase.save
  purchase_item = PurchaseItem.new
  purchase_item.purchase = purchase
  food = ProductOrService.where(type_of_product: "food")
  purchase_item.product_or_service = food.sample
  purchase_item.save
  purchase_item = PurchaseItem.new
  purchase_item.purchase = purchase
  drink = ProductOrService.where(type_of_product: "drink")
  purchase_item.product_or_service = drink.sample
  purchase_item.save
  purchase_item = PurchaseItem.new
  purchase_item.purchase = purchase
  service = ProductOrService.where(type_product_service: "service")
  purchase_item.product_or_service = service.sample
  purchase_item.save
  5.times do
    review = Review.new
    review.calification = rand(1..5)
    review.comment = reviews_hash[review.calification]
    review.purchase = purchase
    review.user = User.all.sample
    review.save
  end
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"
Reviews.destroy_all
Restaurants.destroy_all

5.times do
   restaurant = Restaurant.create(
    name: Faker::Company.name,
    address: Faker::Address.street_address,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
    phone_number: Faker::Number.leading_zero_number(digits: 10)
    )

  15.times do
    review = Review.create(
    content: Faker::Lorem.paragraph,
    rating: rand(0..5)
    )
    review.restaurant = restaurant
    review.save
  end
  restaurant.save
end

#   post.user = user
#     post.save
#   end
#   user.save
# end

# puts "Cleaning database..."
# Restaurant.destroy_all

# puts "Creating some restaurants..."
# 10.times do
#   restaurant = Restaurant.create(
#     name: Faker::Company.name,
#     address: Faker::Address.street_address,
#     category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
#     rating: rand(0..5)
#     )

# 50.times do
#   review = Review.create(
#     text: Faker::Lorem.paragraph
#     rating: rand(0..5)
#   )
# end
# end
# puts "Created #{Restaurant.count} restaurants and #{Review.count} ratings"
# ["chinese", "italian", "japanese", "french", "belgian"]

 # t.string "name"
 #    t.string "address"
 #    t.string "phone_number"
 #    t.datetime "created_at", precision: 6, null: false
 #    t.datetime "updated_at", precision: 6, null: false
 #    t.string "category"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all
Review.destroy_all

puts "Begin Seed"

  5.times do
    restaurant = Restaurant.create!(
      name: Faker::Movies::BackToTheFuture.character,
      address: Faker::Address.street_address,
      category: Restaurant::CATEGORIES.sample,
    )
    5.times do
      Review.create!(
        content: Faker::TvShows::SouthPark.quote,
        rating: [0, 1, 2 , 3, 4, 5].sample,
        restaurant: restaurant
      )
    end
  end


puts "Finished"

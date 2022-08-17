# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"
Restaurant.destroy_all

10.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name, address: Faker::Address.city, category: Restaurant::CATEGORY.sample)
  2.times do
    Review.create!(content: Faker::Restaurant.review, rating: [0, 1, 2, 3, 4, 5].sample, restaurant: restaurant )
  end
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
categories = %w[chinese italian japanese french belgian]
puts 'clear db'
Restaurant.destroy_all
puts 'populate db(5)'

5.times do
  Restaurant.create!(name: Faker::Food.dish,
                     address: Faker::Address.full_address,
                     phone_number: Faker::PhoneNumber.phone_number,
                     category: categories.sample)
end

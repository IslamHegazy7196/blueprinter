# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# Create 1000 books
100.times do
  Book.create(
    title: Faker::Book.title,
    author: Faker::Book.author
  )
end
100.times do
    Product.create(
      name: Faker::Commerce.product_name,
      description: Faker::Lorem.sentence(word_count: 10),
      price: Faker::Commerce.price(range: 0..1000.0, as_string: false)
    )
end
  

puts "Seed data created successfully"

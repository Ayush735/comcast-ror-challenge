# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# pre-filled with 50 baskets each having a capacity between 2 and 27, inclusive.
50.times do
  cap = rand(2..27)
  Basket.create([{ capacity: cap }])
end

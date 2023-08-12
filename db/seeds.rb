# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

puts 'Creating 5 new airbnb records...'

5.times do
  flat = Flat.new(
    name: Faker::Address.street_name,
    address: Faker::Address.full_address,
    description: Faker::Quote.matz,
    price_per_night: rand(50..1000),
    number_of_guests: rand(1..10)
  )
  flat.save!
end

puts 'Finished!'

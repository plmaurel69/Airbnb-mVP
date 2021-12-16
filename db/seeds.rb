# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'Creating 100 fake restaurants...'
10.times do
  flat = Flat.new(
    name:    Faker::Company.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    description:  Faker::Lorem.words(number: 10),
    price_per_night: Faker::Number.decimal(l_digits: 3),
    number_of_guests: Faker::Number.non_zero_digit,
  )
  flat.save!
end
puts 'Finished!'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Clearing database"
Restaurant.destroy_all

puts "Starting seeding"

category = %w(chinese italian japanese french belgian)

5.times do
  restaurant = Restaurant.new(name: Faker::Company.name, address: Faker::Address.street_address, phone_number: Faker::PhoneNumber.phone_number, category: category.sample )

  puts "#{restaurant.name} saved!" if restaurant.save
end

# puts "Seeding ended"

# puts "second seeding"
# resto = Restaurant.new(name: "Nico", address: "street", category: "french")
# puts "#{resto.name} saved!" if resto.save
# hey = Restaurant.new(name: "Nici")
# puts "#{hey.name} saved!" if hey.save
# puts "end"

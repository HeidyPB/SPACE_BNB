# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning DB..."

Spacecraft.destroy_all
User.destroy_all

puts "Creating spacecrafts.."

10.times do
  spacecraft = Spacecraft.new(
    name: Faker::Vehicle.make_and_model,
    velocity: Faker::Number.decimal(l_digits: 3, r_digits: 3),
    passenger_capacity: rand(5..20),
    price: rand(1..5),
    user:
  )
  spacecraft.save!
  puts "Spacecraft #{spacecraft.id} created"
end

puts "Done!"

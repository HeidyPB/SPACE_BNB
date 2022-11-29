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

hansolo = User.create!(
  username: 'Han Solo',
  email: Faker::Internet.email,
  password: '123456910adfa!'
)
  spacecraft = Spacecraft.create!(
    name: 'Milenuim',
    velocity: Faker::Number.decimal(l_digits: 3, r_digits: 3),
    passenger_capacity: rand(5..20),
    price: Faker::Number.decimal(l_digits: 3, r_digits: 3),
    user: hansolo
  )
  puts "Spacecraft #{spacecraft.id} created"

luke = User.create!(
  username: 'Luke Skywalker',
  email: Faker::Internet.email,
  password: '123456910adfa!'
)
  spacecraft = Spacecraft.create!(
    name: 'X-wing',
    velocity: Faker::Number.decimal(l_digits: 3, r_digits: 3),
    passenger_capacity: rand(5..20),
    price: Faker::Number.decimal(l_digits: 3, r_digits: 3),
    user: luke
  )
  puts "Spacecraft #{spacecraft.id} created"

obi = User.create!(
  username: 'Obi-wan Kenobi',
  email: Faker::Internet.email,
  password: '123456910adfa!'
)
  spacecraft = Spacecraft.create!(
    name: 'Destroyer',
    velocity: Faker::Number.decimal(l_digits: 3, r_digits: 3),
    passenger_capacity: rand(5..20),
    price: Faker::Number.decimal(l_digits: 3, r_digits: 3),
    user: obi
  )
  puts "Spacecraft #{spacecraft.id} created"

puts "Done!"

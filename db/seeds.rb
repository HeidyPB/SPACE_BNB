# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

puts "Cleaning DB..."

Spacecraft.destroy_all
User.destroy_all

puts "Creating spacecrafts.."


hansolo = User.create!(
  username: 'Han Solo',
  email: Faker::Internet.email,
  password: '123456910adfa!'
)



luke = User.create!(
  username: 'Luke Skywalker',
  email: Faker::Internet.email,
  password: '123456910adfa!'
)



obi = User.create!(
  username: 'Obi-wan Kenobi',
  email: Faker::Internet.email,
  password: '123456910adfa!'
)



pike = User.create!(
  username: 'pike-treek',
  email: Faker::Internet.email,
  password: '123456910adfa!'
)



neo = User.create!(
  username: 'Neo-matrix',
  email: Faker::Internet.email,
  password: '123456910adfa!'
)



man = User.create!(
  username: 'man-explored',
  email: Faker::Internet.email,
  password: '123456910adfa!'
)



alien = User.create!(
  username: 'man-explored',
  email: Faker::Internet.email,
  password: '123456910adfa!'
)



cooper = User.create!(
  username: 'cooper-station',
  email: Faker::Internet.email,
  password: '123456910adfa!'
)



odyssey = User.create!(
  username: 'odyssey-space',
  email: Faker::Internet.email,
  password: '123456910adfa!'
)



noah = User.create!(
  username: 'odyssey-space',
  email: Faker::Internet.email,
  password: '123456910adfa!'
)

  # Ejemplo empiesas apartir de aqui

  all_spacecrafts = [

  Spacecraft.create!(
    name: 'Millennium Falcon',
    velocity: Faker::Number.decimal(l_digits: 3, r_digits: 3),
    passenger_capacity: rand(5..20),
    price: Faker::Number.decimal(l_digits: 3, r_digits: 3),
    user: hansolo
  ),

  Spacecraft.create!(
    name: 'X-wing',
    velocity: Faker::Number.decimal(l_digits: 3, r_digits: 3),
    passenger_capacity: rand(5..20),
    price: Faker::Number.decimal(l_digits: 3, r_digits: 3),
    user: luke
  ),

  Spacecraft.create!(
    name: 'Death Star',
    velocity: Faker::Number.decimal(l_digits: 3, r_digits: 3),
    passenger_capacity: rand(5..20),
    price: Faker::Number.decimal(l_digits: 3, r_digits: 3),
    user: obi
  ),

  Spacecraft.create!(
    name: 'USS Enterprise',
    velocity: Faker::Number.decimal(l_digits: 3, r_digits: 3),
    passenger_capacity: rand(5..20),
    price: Faker::Number.decimal(l_digits: 3, r_digits: 3),
    user: pike
  ),
  Spacecraft.create!(
    name: 'Nebuchadnezzar',
    velocity: Faker::Number.decimal(l_digits: 3, r_digits: 3),
    passenger_capacity: rand(5..20),
    price: Faker::Number.decimal(l_digits: 3, r_digits: 3),
    user: neo
  ),
  Spacecraft.create!(
    name: 'Apollo 11',
    velocity: Faker::Number.decimal(l_digits: 3, r_digits: 3),
    passenger_capacity: rand(5..20),
    price: Faker::Number.decimal(l_digits: 3, r_digits: 3),
    user: man
  ),
  Spacecraft.create!(
    name: 'UFO',
    velocity: Faker::Number.decimal(l_digits: 3, r_digits: 3),
    passenger_capacity: rand(5..20),
    price: Faker::Number.decimal(l_digits: 3, r_digits: 3),
    user: alien
  ),
  Spacecraft.create!(
    name: 'Endurance',
    velocity: Faker::Number.decimal(l_digits: 3, r_digits: 3),
    passenger_capacity: rand(5..20),
    price: Faker::Number.decimal(l_digits: 3, r_digits: 3),
    user: cooper
  ),
  Spacecraft.create!(
    name: 'Discovery',
    velocity: Faker::Number.decimal(l_digits: 3, r_digits: 3),
    passenger_capacity: rand(5..20),
    price: Faker::Number.decimal(l_digits: 3, r_digits: 3),
    user: odyssey
  ),
    Spacecraft.create!(
      name: "Noah's Ark",
      velocity: Faker::Number.decimal(l_digits: 3, r_digits: 3),
      passenger_capacity: rand(5..20),
      price: Faker::Number.decimal(l_digits: 3, r_digits: 3),
      user: noah
    )
]

spacecraft_0 = URI.open("https://res.cloudinary.com/dwvrcwjwc/image/upload/v1669941162/Miscellaneous/Millennium-Falcon_vvvifb.jpg")
all_spacecrafts[0].photo.attach(io: spacecraft_0, filename: "nes.png", content_type: "image/png")

spacecraft_1 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
all_spacecrafts[1].photo.attach(io: spacecraft_1, filename: "nes.png", content_type: "image/png")

spacecraft_2 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
all_spacecrafts[2].photo.attach(io: spacecraft_2, filename: "nes.png", content_type: "image/png")

spacecraft_3 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
all_spacecrafts[3].photo.attach(io: spacecraft_3, filename: "nes.png", content_type: "image/png")

spacecraft_4 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
all_spacecrafts[4].photo.attach(io: spacecraft_4, filename: "nes.png", content_type: "image/png")

spacecraft_5 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
all_spacecrafts[5].photo.attach(io: spacecraft_5, filename: "nes.png", content_type: "image/png")

spacecraft_6 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
all_spacecrafts[6].photo.attach(io: spacecraft_6, filename: "nes.png", content_type: "image/png")

spacecraft_7 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
all_spacecrafts[7].photo.attach(io: spacecraft_7, filename: "nes.png", content_type: "image/png")

spacecraft_8 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
all_spacecrafts[8].photo.attach(io: spacecraft_8, filename: "nes.png", content_type: "image/png")

spacecraft_9 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
all_spacecrafts[9].photo.attach(io: spacecraft_9, filename: "nes.png", content_type: "image/png")

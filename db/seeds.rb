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

all_users = [

  hansolo = User.create!(
    username: 'Han Solo',
    email: Faker::Internet.email,
    password: '123456910adfa!'
  ),

  luke = User.create!(
    username: 'Luke Skywalker',
    email: Faker::Internet.email,
    password: '123456910adfa!'
  ),

  obi = User.create!(
    username: 'Obi-wan Kenobi',
    email: Faker::Internet.email,
    password: '123456910adfa!'
  ),

  pike = User.create!(
    username: 'pike-treek',
    email: Faker::Internet.email,
    password: '123456910adfa!'
  ),

  neo = User.create!(
    username: 'Neo-matrix',
    email: Faker::Internet.email,
    password: '123456910adfa!'
  ),

  man = User.create!(
    username: 'man-explored',
    email: Faker::Internet.email,
    password: '123456910adfa!'
  ),

  alien = User.create!(
    username: 'man-explored',
    email: Faker::Internet.email,
    password: '123456910adfa!'
  ),

  cooper = User.create!(
    username: 'cooper-station',
    email: Faker::Internet.email,
    password: '123456910adfa!'
  ),

  odyssey = User.create!(
    username: 'odyssey-space',
    email: Faker::Internet.email,
    password: '123456910adfa!'
  ),

  noah = User.create!(
    username: 'odyssey-space',
    email: Faker::Internet.email,
    password: '123456910adfa!'
  )
]


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

user_0 = URI.open("https://res.cloudinary.com/ddwnnuqij/image/upload/v1670000000/spacebnb/avatars/avatarmilenium_ribvbq.jpg")
all_users[0].avatar.attach(io: user_0, filename: "nes.png", content_type: "image/png")

user_1 = URI.open("https://res.cloudinary.com/ddwnnuqij/image/upload/v1669999999/spacebnb/avatars/avatarxwing_jsi94k.jpg")
all_users[1].avatar.attach(io: user_1, filename: "nes.png", content_type: "image/png")

user_2 = URI.open("https://res.cloudinary.com/ddwnnuqij/image/upload/v1669999999/spacebnb/avatars/avatardestroyer_z9kc5m.jpg")
all_users[2].avatar.attach(io: user_2, filename: "nes.png", content_type: "image/png")

user_3 = URI.open("https://res.cloudinary.com/ddwnnuqij/image/upload/v1670000001/spacebnb/avatars/avatarenterprice_okdrqt.jpg")
all_users[3].avatar.attach(io: user_3, filename: "nes.png", content_type: "image/png")

user_4 = URI.open("https://res.cloudinary.com/ddwnnuqij/image/upload/v1669999999/spacebnb/avatars/avatarnebuchadnezzar_hdqyu4.jpg")
all_users[4].avatar.attach(io: user_4, filename: "nes.png", content_type: "image/png")

user_5 = URI.open("https://res.cloudinary.com/ddwnnuqij/image/upload/v1670000000/spacebnb/avatars/avatarapolo_fvxx7p.jpg")
all_users[5].avatar.attach(io: user_5, filename: "nes.png", content_type: "image/png")

user_6 = URI.open("https://res.cloudinary.com/ddwnnuqij/image/upload/v1669999999/spacebnb/avatars/avatarufo_gnc6qv.jpg")
all_users[6].avatar.attach(io: user_6, filename: "nes.png", content_type: "image/png")

user_7 = URI.open("https://res.cloudinary.com/ddwnnuqij/image/upload/v1669999999/spacebnb/avatars/avatarendurance_nroklz.jpg")
all_users[7].avatar.attach(io: user_7, filename: "nes.png", content_type: "image/png")

user_8 = URI.open("https://res.cloudinary.com/ddwnnuqij/image/upload/v1669999999/spacebnb/avatars/avatardiscovery_uyig4b.jpg")
all_users[8].avatar.attach(io: user_8, filename: "nes.png", content_type: "image/png")

user_9 = URI.open("https://res.cloudinary.com/ddwnnuqij/image/upload/v1670000000/spacebnb/avatars/avatarnoahsark_sgk0y4.jpg")
all_users[9].avatar.attach(io: user_9, filename: "nes.png", content_type: "image/png")


spacecraft_0 = URI.open("https://res.cloudinary.com/ddwnnuqij/image/upload/v1669999733/spacebnb/spaceships/milenium_namgjn.jpg")
all_spacecrafts[0].photo.attach(io: spacecraft_0, filename: "nes.png", content_type: "image/png")

spacecraft_1 = URI.open("https://res.cloudinary.com/ddwnnuqij/image/upload/v1669999978/spacebnb/spaceships/x-wing_mfocnh.jpg")
all_spacecrafts[1].photo.attach(io: spacecraft_1, filename: "nes.png", content_type: "image/png")

spacecraft_2 = URI.open("https://res.cloudinary.com/ddwnnuqij/image/upload/v1669999978/spacebnb/spaceships/destroyer_j8wozw.jpg")
all_spacecrafts[2].photo.attach(io: spacecraft_2, filename: "nes.png", content_type: "image/png")

spacecraft_3 = URI.open("https://res.cloudinary.com/ddwnnuqij/image/upload/v1669999978/spacebnb/spaceships/enterprise_dvguyt.jpg")
all_spacecrafts[3].photo.attach(io: spacecraft_3, filename: "nes.png", content_type: "image/png")

spacecraft_4 = URI.open("https://res.cloudinary.com/ddwnnuqij/image/upload/v1669999978/spacebnb/spaceships/nebuchadnezzar_ur9a3x.jpg")
all_spacecrafts[4].photo.attach(io: spacecraft_4, filename: "nes.png", content_type: "image/png")

spacecraft_5 = URI.open("https://res.cloudinary.com/ddwnnuqij/image/upload/v1669999978/spacebnb/spaceships/apolo_khr6ra.jpg")
all_spacecrafts[5].photo.attach(io: spacecraft_5, filename: "nes.png", content_type: "image/png")

spacecraft_6 = URI.open("https://res.cloudinary.com/ddwnnuqij/image/upload/v1669999969/spacebnb/spaceships/ufo_qzww4g.jpg")
all_spacecrafts[6].photo.attach(io: spacecraft_6, filename: "nes.png", content_type: "image/png")

spacecraft_7 = URI.open("https://res.cloudinary.com/ddwnnuqij/image/upload/v1669999978/spacebnb/spaceships/endurance_kernzp.jpg")
all_spacecrafts[7].photo.attach(io: spacecraft_7, filename: "nes.png", content_type: "image/png")

spacecraft_8 = URI.open("https://res.cloudinary.com/ddwnnuqij/image/upload/v1669999978/spacebnb/spaceships/discovery_pxbmwc.jpg")
all_spacecrafts[8].photo.attach(io: spacecraft_8, filename: "nes.png", content_type: "image/png")

spacecraft_9 = URI.open("https://res.cloudinary.com/ddwnnuqij/image/upload/v1669999979/spacebnb/spaceships/noahsarc_fpcezl.jpg")
all_spacecrafts[9].photo.attach(io: spacecraft_9, filename: "nes.png", content_type: "image/png")

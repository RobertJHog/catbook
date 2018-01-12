# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Photo.destroy_all
User.destroy_all
Cat.destroy_all

lovely_day = Photo.create(name: "Lovely day")
looking_outside = Photo.create(name: "Looking outside")
warm_and_cozy = Photo.create(name: "Warm and Cozy")
room_with_a_view = Photo.create(name: "Room with a View")
stretching = Photo.create(name: "Stretching")
a_cats_touch = Photo.create(name: "A Cat's Touch")
white_washed = Photo.create(name: "White Washed")
tempting_terrace = Photo.create(name: "Tempting Terrace")

robertjan = User.create(email: "rj@test.nl", password: "abcd1234")
rj = User.create(email: "rj@test.com", password: "abcd1234")
robertj = User.create(email: "rj@test.co", password: "abcd1234")

wally = Cat.create(name: "Wally", age: 1, race: "Ragdoll", male: true, country: "Netherlands", city: "Amsterdam", user: robertjan, photos: [lovely_day, looking_outside])
george = Cat.create(name: "George", age: 1, race: "Persian", male: true, country: "Netherlands", city: "Amsterdam", user: robertj, photos: [lovely_day, looking_outside])
frits = Cat.create(name: "Frits", age: 1, race: "British Shorthair", male: false, country: "Netherlands", city: "Rotterdam", user: rj, photos: [lovely_day, looking_outside])

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Gossip.destroy_all
User.destroy_all
City.destroy_all

#create 5 cities
5.times do
  City.create(name: Faker::Address.unique.city, zip_code: Faker::Address.unique.zip_code)
end

#create 6 users
6.times do
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.sentence(word_count: 50 + rand(10)), email: Faker::Internet.email, age: Faker::Number.between(from: 15, to: 99), city: City.all.sample, password: Faker::Internet.password(min_length: 8))
end

#create 10 gossips
10.times do
  Gossip.create(title: Faker::Artist.name, content: Faker::Lorem.sentence(word_count: 30 + rand(10)), user: User.all.sample)
end
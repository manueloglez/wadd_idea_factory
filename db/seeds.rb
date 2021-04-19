# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Idea.delete_all
User.delete_all
PASS = '123'

me = User.create(
  name: "Manuel",
  email: "mang.95@gmail.com",
  password: PASS,
)

4.times do
  User.create(
    name: Faker::Name.first_name,
    email: Faker::Internet.email,
    password: PASS,
  )
end

users = User.all

15.times do 
  Idea.create(
    title: Faker::Hacker.say_something_smart,
    description: Faker::ChuckNorris.fact,
    user: users.sample,
  )
end
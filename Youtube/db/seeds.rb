# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

100.times do |i|
  new_user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

20.times do |i|
  Category.create(name: Faker::ProgrammingLanguage.unique.name)
end

500.times do |i|
  a = rand(1..100)
  b = rand (1..20)
  find_user = User.find(a)
  find_category = Category.find(b)
  Video.create(title: Faker::Pokemon.location, lenght: Faker::Number.between(57, 6835), user_id: find_user.id, category_id: find_category.id)
end

400.times do |i|
  a = rand(1..100)
  b = rand (1..20)
  find_user = User.find(a)
  find_category = Category.find(b)
  find_user.categories << find_category
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

500.times do |i|
  new_student = Student.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

60.times do |i|
  Cour.create(name: Faker::Educator.unique.course)
end

3000.times do |i|
  a = rand(1..500)
  b = rand (1..60)
  new_student = Student.find(a)
  new_cour = Cour.find(b)
  new_student.cours << new_cour
end
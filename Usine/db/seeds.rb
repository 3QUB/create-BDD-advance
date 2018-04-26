# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

100.times do |i|
  new_assembly = Assembly.create(name: Faker::Vehicle.manufacture)
  x = rand(5..17)
  x.times do |k|
    new_part = Part.create(part_number: Faker::Vehicle.vin)
    new_assembly.parts << new_part
  end
end

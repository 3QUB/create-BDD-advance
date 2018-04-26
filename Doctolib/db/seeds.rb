# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

35.times do |i|
  City.create(location: Faker::Address.city)
end

20.times do |i|
  Specialty.create(name: Faker::Dessert.topping)
end

50.times do |i|
  a = rand (1..35)
  b = rand (1..35)
  doctor_and_appointment_city = City.find(a)
  patient_city = City.find(b)
  new_doctor = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: doctor_and_appointment_city.id)
  10.times do |k|
    new_patient = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: patient_city.id)
    Appointment.create(appointment_date: Faker::Time.forward(25, :morning), doctor_id: new_doctor.id, patient_id: new_patient.id, city_id: doctor_and_appointment_city.id)
  end
end

120.times do |i|
  a = rand (1..20)
  b = rand (1..50)
  find_specialty = Specialty.find(a)
  find_doctor = Doctor.find(b)
  find_doctor.specialties << find_specialty
end


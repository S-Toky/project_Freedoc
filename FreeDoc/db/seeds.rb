# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
City.destroy_all

tab = []
#tab =["Cardiologists", "Dermatologists‎", "Gynaecologists‎", "Neurologists"‎]
tab = ["Neurologist", "Cardiologists", "Dermatologists‎"]

100.times do
	Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip)
end

100.times do |i|
	Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

100.times do |i|
	Appointment.create(date: Faker::Date.between(from: 2.days.ago, to: Date.today), doctor_id: rand(0..i), patient_id: (0..i))
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


## create developers

(1..10).each do |i|
  User.create!(email: "developer#{i}@gmail.com", role: 'developer', password: 'password', password_confirmation: 'password')
end
puts "developer created"
(0..1).each do |i|
  User.create!(email: "admin#{i}@gmail.com", role: 'developer', password: 'password', password_confirmation: 'password')
end
puts "admin created"
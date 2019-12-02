# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(
 fullname: "ibrahim",
 email: "ibrahim@gmail.com",
 phonenumber: "0789859109",
 admin: "true",
 password: "12345678",
 password_confirmation: "12345678"
 #watched_on: 5.days.ago
)
User.create!(
 fullname: "gashema",
 email: "gashema@gmail.com",
 phonenumber: "078845948",
 admin: "true",
 password: "1234567890",
 password_confirmation: "1234567890"
 #watched_on: 5.days.ago
)
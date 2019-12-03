# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    User.create!(fullname:"papa", email: "ga@gmail.com", phonenumber:  "0789859109", admin: "true", password:  "1234567890", password_confirmation:"1234567890")

    def create_user(email)
    User.create!(
      fullname: "wa",
      phonenumber:  "0789859109",
      email:  email,
      password: "123456"
    )
  end
  #fake  users
  1...17.times do |i|
    create_user("wa_#{i}@gmail.com")
  end
  def create_admin(email)
    User.create!(
      fullname: "admin",
      admin: "true",
      email:  email,
      phonenumber:  "0789859109",
      password: "123456"
    )
  end
  #fake  users
  1...3.times do |i|
    create_admin("admin_#{i}@gmail.com")
  end
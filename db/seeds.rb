# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
1.upto(20) do |i|
    User.create(fullname: "papa#{i}",
	    email: "papa@gmail.com#{i}",
	    phonenumber:  "0789859109#{i}",
	    admin: "true#{i}",
	    password:  "1234567890#{i}",
	    password_confirmation:  "1234567890#{i}")
 end
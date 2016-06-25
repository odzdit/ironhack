# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

contacts = [
  [ "Sunny terrace", "Madrid", "896-89-3233", "odzdit@me.com" ],
  [ "Sunny terrace", "Madrid", "896-89-3233", "odzdit@me.com" ],
  [ "Sunny terrace", "Madrid", "896-89-3233", "odzdit@me.com" ],
  [ "Sunny terrace", "Madrid", "896-89-3233", "odzdit@me.com" ],
]

contacts.each do |name, address, phone, email |
  Contact.create( name: name, address: address, phone: phone, email: email)
end
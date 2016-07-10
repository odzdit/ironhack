
user1 = User.create(name: "Dieter", email: "odzdit@me.com")
user2 = User.create(name: "Matt", email: "matt@me.com")
user3 = User.create(name: "Gaby", email: "gaby@me.com")
user4 = User.create(name: "Granola", email: "granola@me.com")

Users = [user1, user2, user3, user4]

Users.each do | user |
	user.products.create(title: "Iphone", description: "It shines", deadline: Time.now)
end
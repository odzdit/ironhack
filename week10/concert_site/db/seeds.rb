# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

concert1 = ["deadmau5", "American Airlines Arena", "Miami", Time.now, 12.95, "Best concert of the year by far dont miss it"]
concert2 = ["eric prydz", "Beto Avila", "Cancun", Time.now, 13.95, "Best concert of the year by far dont miss it"]
concert3 = ["daft punk", "Palacio Deportes", "Mexico City", Time.now, 55.95, "Best concert of the year by far dont miss it"]
concert4 = ["richie hawtin", "Space", "Miami", Time.now, 20.95, "Best concert of the year by far dont miss it"]
concert5 = ["josh", "ironhack", "Miami", Time.now, 3000.95, "Best concert of the year by far dont miss it, josh will be spinning the shit out of the decks"]

concerts = [concert1, concert2, concert3, concert4, concert5]

concerts.each do | artist, venue, city, date, price, description |
		MusicConcert.create(artist: artist, venue: venue, city: city, date: date, price: price, description: description)
	end
require("imdb")

trek_search = Imdb::Search.new("Star Trek")
diehard_search = Imdb::Search.new("Die Hard")

movies = diehard_search.movies

movies.each do | movie |
	puts "#{movie.title}: #{movie.rating}"
	end


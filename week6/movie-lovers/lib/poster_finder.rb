require "imdb"

class PosterFinder
	def search(movie)
		i = Imdb::Search.new(movie)
		moviearray = []

			i.movies[1..20].each do | i |
				if i.poster
					moviearray.push(i)
				end
			end
		moviearray[1..9] || []
	end
end
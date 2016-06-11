require "sinatra"
require "sinatra/reloader" if development?
require "imdb"
require_relative("lib/poster_finder")

get "/" do 
  erb(:homepage)
end

post "/movie_results" do 
	@genre = params[:genre]

	real_poster_array = PosterFinder.new
	@marray = real_poster_array.search(@genre)
	@new_movie = @marray.sample

		if @marray.length > 2
			erb(:movie_results)
		else
			erb(:error)
	end
end


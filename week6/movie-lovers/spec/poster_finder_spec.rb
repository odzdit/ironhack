require_relative "../lib/poster_finder"
require "spec_helper"


describe PosterFinder do
	before :each do
		@movie = PosterFinder.new
	end
	it "Gives you an error if the array does not have more than 2" do
		expect((@movie.search("Star Wars")).length).to eq(9)
	end
end
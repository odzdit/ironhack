class MusicConcertsController < ApplicationController

	def index
		@musicconcerts = MusicConcert.where(date: (DateTime.now.beginning_of_day..DateTime.now.end_of_day))
		@concerts_month = MusicConcert.where(date: (Date.tomorrow.beginning_of_day..Date.today.end_of_month))
	end

	def new
		@concert=MusicConcert.new
	end

	def create
		@concert = MusicConcert.new(
			artist: params[:music_concert][:artist],
			venue: params[:music_concert][:venue],
			city: params[:music_concert][:city],
			date: params[:music_concert][:date],
			price: params[:music_concert][:price],
			description: params[:music_concert][:description]
			)
		if @concert.save
			redirect_to music_concerts_path
		else
			render "new"
		end

	end

	def show
		@concert = MusicConcert.find(params[:id])
		@comment = @concert.comments.new
		@comments=@concert.comments.all
		# @comments = Comment.find_by(params[:id])
	end
	
	def search
	end

	def search_results
		@concerts = MusicConcert.sort_by_price(params[:price])
	end

end

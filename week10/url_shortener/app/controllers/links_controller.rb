class LinksController < ApplicationController
	def new
		@link = Link.new
	end

	def show
		@link = Link.find_by(id: params[:id])
	end

	def index
		link = Link.find_by(shortlink: params[:shortlink])
			if link
				redirect_to link.original_url
			end
	end

 	def create
 		link = Link.create(
 			original_url: params[:link][:original_url],
 			shortlink: Link.generate_shortlink(3)
 			)
 		redirect_to "/links/#{link.id}"
 	end
end
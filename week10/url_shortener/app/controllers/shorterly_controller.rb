class ShorterlyController < ApplicationController
	def transform
		@url = Url.new(
			:old_url params[:name]
			)
		@url.save
		redirect_to /:shortlink
	end

	def shortlink
	end

end

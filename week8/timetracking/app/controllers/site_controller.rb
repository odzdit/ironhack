class SiteController < ApplicationController
	def home
	end

	def contact
		render 'email'
	end
end

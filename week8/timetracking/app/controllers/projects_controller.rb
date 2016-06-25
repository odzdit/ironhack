class ProjectsController < ApplicationController
	
	def index
		@projects = Project.limit(10).order(created_at: :desc)
	end

end

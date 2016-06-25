class ProjectsController < ApplicationController
	
	def index
		@projects = Project.limit(10).order(created_at: :desc)
	end

	def new
		@project = Project.new
	end

	def create
	@project = Project.new(
		name: params[:project][:name],
	description: params[:project][:description]
	)
	@project.save
	redirect_to '/projects/'
	end

	def show
		@project = Project.find(params[:id])
		rescue ActiveRecord::RecordNotFound
			redirect_to '/projects'
		end
	end
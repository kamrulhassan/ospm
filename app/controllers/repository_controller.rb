class RepositoryController < ApplicationController
	# ************************************************	
	# we will use the layout for repository
	layout "repository"
	# authentication 
	before_filter :authenticate_user!
	# role based access control
	load_and_authorize_resource
	# ************************************************

	def index
	# get all the project with the access permission admin, read
	@projects = Project.with_role(:admin, current_user).concat(Project.with_role(:read, current_user))

	respond_to do |format|
	  format.html # index.html.erb
	  format.json { render json: @projects }
	end
	
	end
end

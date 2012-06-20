class HomeController < ApplicationController
	layout "home"
	before_filter :clear_all_session
	def index
	end	
end

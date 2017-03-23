class DailyWorkoutsController < ApplicationController

	def index
		render "index.html.erb"
	end

	def new
		render "new.html.erb"
	end

	def show
		render "show.html.erb"
	end

	def add
		render "add.html.erb"
	end


end

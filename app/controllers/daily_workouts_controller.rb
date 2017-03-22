class DailyWorkoutsController < ApplicationController

	def index
		render "index.html.erb"
	end

	def new
		render "new.html.erb"
	end


end

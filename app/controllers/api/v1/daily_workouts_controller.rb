class Api::V1::DailyWorkoutsController < ApplicationController
	def index
		@daily_workout = DailyWorkout.all
		render "index.json.jbuilder"
	end

	def create

    	@daily_workout = DailyWorkout.create(
    		name: params[:name],
    		user_id: params[:user_id],
    		date: params[:date],
    		day_of_week: params[:name],
    		duration: params[:duration]
    		)
    	
    	render "show.json.jbuilder"
	end

	def show
		@daily_workout = DailyWorkout.find_by(id: params[:id])

		render "show.json.jbuilder"
    end

end

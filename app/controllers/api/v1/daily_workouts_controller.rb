class Api::V1::DailyWorkoutsController < ApplicationController
	def index
		if current_user.carted_workout.where(status:carted).any?
			@carted_workout = current_user.carted_workout.where(status: "carted")
		else
			flash[:warning] = "No workouts added."
		end
	end

	def create
		carted_exercise = current_user.carted_exercise.where(status: "carted")

    	daily_workout = Order.create(
    		user_id: current_user.id,
    		date: "",
    		day_of_week: "Monday"
    		duration: "10"
    		)

    	carted_exercise.update_all(status: "added", daily_workout_id: daily_workout.id)
	end

	def show
		@exercise = Exercise.find_by(id: params[:id])

    end

end

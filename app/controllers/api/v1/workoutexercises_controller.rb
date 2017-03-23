class Api::V1::WorkoutexercisesController < ApplicationController
	def create
		@workoutexercise = Workoutexercise.create(
			exercise_id: params[:exercise_id],
			daily_workout_id: params[:daily_workout_id]
			)
		render 'show.json.jbuilder'
	end
end

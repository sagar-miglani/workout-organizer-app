class Api::V1::WorkoutexercisesController < ApplicationController
	def create
		@workoutexercise = Workoutexercise.create(
			exercise_id: params[:exercise_id],
			daily_workout_id: params[:daily_workout_id]
			)
		render 'show.json.jbuilder'
	end
	def destroy
		@workoutexercise = Workoutexercise.find_by(
			exercise_id: params[:exercise_id],
			daily_workout_id: params[:daily_workout_id]
			)
		@workoutexercise.destroy
		@daily_workout = DailyWorkout.find_by(id: params[:daily_workout_id])

		render "api/v1/daily_workouts/show.json.jbuilder"
	end
end

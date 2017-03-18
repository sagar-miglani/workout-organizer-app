class Api::V1::CartedWorkoutController < ApplicationController
	def index
		if current_user.carted_products.where(status: "carted").any?
	      @carted_workout = current_user.carted_workouts.where(status: "carted")
	    else
	      flash[:warning] = "You have no workouts added for this day!"
	      redirect_to "/"
    	end
	end

	def create
		exercise_id = params[:exercise_id]
    	carted_exercise = CartedExercise.create(
	      user_id: current_user.id,
	      exercise_id: exercise_id,
	      status: "carted"
    	)
	end

	def destroy
		carted_exercise = CartedProduct.find_by(id: params[:id])
	    carted_exercise.update(status: "removed")
	end
end

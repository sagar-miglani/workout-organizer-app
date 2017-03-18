class Api::V1::ExercisesController < ApplicationController
	def index
		@exercises = Exercise.all
		render 'index.json.jbuilder'
	end

	def create
		@exercise = Exercise.create(
			name: params[:name],
			equipment: params[:equipment],
			body_parts: params[:body_parts],
			difficulty: params[:difficulty],
			description: params[:description],
			)
		render 'index.json.jbuilder'
	end

	def show 
		@exercise = Exercise.find_by(id: params[:id])
	end	
end

class Api::V1::UsersController < ApplicationController
	def index
		if(params[:email])
			@user = User.find_by(email: params[:email])
			render "show.json.jbuilder"
		else
			@users = User.all
			render 'index.json.jbuilder'
		end
	end


	def create
		user = User.create(
			first_name: params[:first_name],
			last_name: params[:last_name],
			date_of_birth: "01-01-01",
			height: 10,
			weight: 10,
			gender: "Male",
			email: params[:email],
			password: params[:password],
			)

		redirect_to "/login"
	end


	def show

		@user = User.find(params[:id])

		render "show.json.jbuilder"
	end
end

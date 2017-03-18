class Api::V1::SessionsController < ApplicationController
	def new

	end

	def create
		user = User.find_by(email: params[:email])
		if user && user.authenticate(params[:password])
			login(user)
			redirect_to user_path(user.id)
		else
			redirect_to "/login"
		end
	end

	def destroy
		logout
		redirect_to "/login"
	end

end

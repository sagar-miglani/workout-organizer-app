module SessionsHelper
	def login(user)
		session[:user_id] = user.id
		@current_user = user
	end

	def current_user
		@current_user ||= User.find(session[:user_id])
	end

	def logout
		@current_user = session[:user_id] = nil
	end

	def full_name
		@name = current_user.first_name + " " + current_user.last_name
	end

end

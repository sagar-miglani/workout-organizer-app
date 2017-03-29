class SessionsController < ApplicationController	
  def new
  	render "new.html.erb", :layout => false
  end

  def create

    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      login(user)
      redirect_to "/exercises"
    else
      redirect_to "/login"
    end

  end   

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end

end

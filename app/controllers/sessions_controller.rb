class SessionsController < ApplicationController

  # currently unused
  def new
  end

  # used to create a login session
  def create
    user = User.authenticate(params[:username], params[:password])
    
    if user
      session[:user_id] = user.id
      redirect_to root_url
    else
      flash.now.alert = "Invalid username or password"
      render "new"
    end
  end

  #used to destroy login session
  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end

end

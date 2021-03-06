class SessionsController < ApplicationController
  
  def new 
    render :new 
  end 
  
  def create
    user = User.user_find_by_credentials(params[:user][:email], params[:user][:password])
    
    if user.nil?
      render :new
    elsif !user.activated?
      flash.now[:errors] = ['You must activate your account first']
      render :new
    else 
      log_in!(user)
      redirect_to user_url(user)
    end 
  end 
  
  def destroy 
    current_user.reset_session_token!
    session[:session_token] = nil 
    
    redirect_to new_session_url 
  end 
end

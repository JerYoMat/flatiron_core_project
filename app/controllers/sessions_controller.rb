class SessionsController < ApplicationController
  def new
  end


  def remote_login 
    @user = User.find_by(email: params[:email].downcase)
    if @user && @user.authenticate(params[:password])
      log_in @user
      render json: @user, status: 201 
    else
      render json: {'response': 'invalid creds'} 
    end 
  end 
 
  def create
    @user = User.find_by(email: params[:session][:email_or_username].downcase) || User.find_by(username: params[:session][:email_or_username].downcase) 
    if @user && @user.authenticate(params[:session][:password])
      log_in @user
      redirect_to @user
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end
 
  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end

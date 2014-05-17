class SessionController < ApplicationController
  
  # GET
  # Show login form
  def new
  end

  # POST
  # Add to session
  def create
  	user = User.find_by_email(params[:email])
  	if user && user.authenticate(params[:password])
  		@status = 'success-message'
  		session[:user_id] = user.id
  		redirect_to root_path, flash: { success: 'You are logged in!'}
  	else
  		@status = 'error-message'
  		session[:user_id] = nil
  		redirect_to login_path, flash: {error: 'Incorrect email or password'}
  	end
  end

  # DELETE
  # Delete from session
  def delete
  end


end

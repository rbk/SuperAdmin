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
  		session[:user_id] = user.id
      if user.group == 'superadmin'
        session[:admin] = true
      end
  		redirect_to root_path, flash: { success: 'You are logged in!'}
  	else
  		session[:user_id] = nil
  		redirect_to login_path, flash: { warning: 'Incorrect email or password'}
  	end
  end

  # DELETE
  # Delete from session
  def delete
    session[:user_id] = nil
    redirect_to root_path, flash: {notice: 'You are logged out.'}
  end


end

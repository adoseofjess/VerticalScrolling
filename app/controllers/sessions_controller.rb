class SessionsController < ApplicationController
  include SessionsHelper
  # before_filter :require_no_current_user!, :only => [:create, :new]
  # before_filter :require_current_user!, :only => [:destroy]
  
  def create
    
    user = User.find_by_credentials(
      params[:user][:username],
      params[:user][:password]
    )
    
    if user.nil?
      render :json => "Credentials were wrong"
    else
      self.current_user = user
      redirect_to root_url
    end
  end
  
  def current_user=(user)
    @current_user = user
    session[:session_token] = user.session_token
  end
  
  def destroy
    logout_current_user!
    redirect_to root_url
  end
  
  def new
  end
end

class SessionsController < ApplicationController

  def index
  end

  def create
    email    = params[:email]
    password = params[:password]
    user     = User.find_by email: email
    if user && user.authenticate(password)
      session[:user_id] = user.id
      redirect_to '/home'
    end
  end

  def callback
    response = Instagram.get_access_token(
      params[:code],
      :redirect_uri => "http://#{request.host_with_port}/oauth/callback"
    )
    session[:access_token] =  response.access_token
      @profile             =  response.user
      @profile.username    =  response.user.username
      @profile.bio         =  response.user.bio
      @profile.website     =  response.user.website
      @profile.image_url   =  response.user.profile_picture
      @profile.full_name   =  response.user.full_name
      @profile.id          =  response.user.id
      @profile.profile_pic =  response.user.profile_picture
    redirect_to home_path
  end

  def auth
    callback_url = "http://#{request.host_with_port}/oauth/callback"
    redirect_to Instagram.authorize_url(:redirect_uri => callback_url)
  end

  def destroy
    session[:access_token] = nil
    session[:user_id]      = nil
    redirect_to root_path
  end

end

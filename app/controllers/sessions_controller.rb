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

    session[:access_token]       =  response.access_token
    session[:instagram_user_id]  =  response.user.id


    # if session[:access_token]

    #   @profile = Profile.create(
    #   :profile_pic =>  response.user.profile_picture,
    #   :username    =>  response.user.username,
    #   :bio         =>  response.user.bio,
    #   :website     =>  response.user.website
    #   )

    # else session[:user_id]
    #   @profile = Profile.create(profile_params)
    # end
    #   @user = User.create
    #   @user.id = @profile.user_id
    #   session[:user_id] = @user.id
    #   @user.save

    #   @user    = User.find session[:user_id]
    #   @profile.user_id = session[:user_id]
    #   @profile.save


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

private

  def user_params
    params.require(:user).permit(:email, :password)
  end

private

  def profile_params
    params.require(:profile).permit(:name, :bio, :website, :profile_pic, :full_name, :id, :users_type, :location, :hair)
  end

end

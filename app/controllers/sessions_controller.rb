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
    session[:user_id]      =  response.user.id
      @profile             =  response.user
      @profile.username    =  response.user.username
      @profile.bio         =  response.user.bio
      @profile.website     =  response.user.website
      @profile.profile_pic =  response.user.profile_picture
      @profile.full_name   =  response.user.full_name
      @profile.id          =  response.user.id
      @profile.profile_pic =  response.user.profile_picture
      redirect_to new_welcome_path
  end

  def auth
    callback_url = "http://#{request.host_with_port}/oauth/callback"
    redirect_to Instagram.authorize_url(:redirect_uri => callback_url)
  end
    # if session[:access_token]
    # @user = User.create(
    #   :email       =>  params[:email],
    #   :password    =>  params[:password],
    #   :id          => session[:user_id])

    # else session[:user_id]
    #   @user = User.create(user_params)
    # end
    #   user    = User.new
    #   @user.save

    # end

    # if session[:access_token]
    #   @profile = Profile.create(
    #   :profile_pic =>  response.user.profile_picture,
    #   :username    =>  response.user.username,
    #   :bio         =>  response.user.bio,
    #   :website     =>  response.user.website,
    #   :id          =>  response.user.id,
    #   :user_type   =>  nil,
    #   :location    =>  nil,
    #   :hair        =>  nil)

    # else session[:user_id]
    #   @profile = Profile.create(profile_params)
    # end
    #   @user    = User.find session[:user_id]
    #   @profile = Profile.new
    #   @profile.id = session[:user_id]
    #   @profile.save

    #   redirect_to home_path
    # end

# def create
#     if session[:access_token]
#       @profile             =  response.user
#       @profile.profile_pic =  response.user.profile_picture
#       @profile.user_type   =  nil
#       @profile.location    =  nil
#       @profile.hair        =  nil
#     else session[:user_id]
#       @profile = Profile.create(profile_params)
#     end
#       @user    = User.find session[:user_id]
#       @profile = Profile.new
#       binding.pry
#       @profile.id = session[:user_id]
#       profile.save
#       redirect_to homepath
#   end


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

class ProfilesController < ApplicationController

  def index
    @profiles = Profile.all
  end

  def new
  end

  def show
      @profile = Profile.find(@profile.id)
  end

  def create
    if session[:access_token]
      @profile = Profile.create(
      :profile_pic =>  response.user.profile_picture,
      :username    =>  response.user.username,
      :bio         =>  response.user.bio,
      :website     =>  response.user.website,
      :id          =>  response.user.id,
      :user_type   =>  nil,
      :location    =>  nil,
      :hair        =>  nil)

    else session[:user_id]
      @profile = Profile.create(profile_params)
    end
      @user    = User.find session[:user_id]
      @profile = Profile.new
      @profile.id = session[:user_id]
      @profile.save

      redirect_to home_path
  end
  #   if session[:access_token]
  #     @profile = Profile.create(
  #     :profile.profile_pic =>  response.user.profile_picture
  #     :profile.username    =>  response.user.username
  #     :profile.bio         =>  response.user.bio
  #     :profile.website     =>  response.user.website
  #     :profile.image_url   =>  response.user.profile_picture
  #     :profile.full_name   =>  response.user.full_name
  #     :profile.id          =>  response.user.id
  #     :profile.user_type   =>  nil
  #     :profile.location    =>  nil
  #     :profile.hair        =>  nil)
  #   else session[:user_id]
  #     @profile = Profile.create(profile_params)
  #   end
  #     @user    = User.find session[:user_id]
  #     @profile = Profile.new
  #     @profile.id = session[:user_id]
  #     profile.save
  #     redirect_to home_path
  # end

  def edit
    @profile = Profile.find(@profile.id)
  end

  def update
    profile = Profile.find(@profile.id)
    profile.update(profile_profile_params)
    redirect_to profile_path(profile)
  end

  def destroy
    Profile.destroy(@profile.id)
    redirect_to home_path
  end

private

  def profile_params
    params.require(:profile).permit(:name, :bio, :website, :profile_pic, :full_name, :id, :users_type, :location, :hair)
  end

end

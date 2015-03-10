class ProfilesController < ApplicationController

  def index
    @profiles = Profile.all
  end

  def new
  end

  def show
      @user    = User.find session[:user_id]
      @user.profile
  end

  def create
  end

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

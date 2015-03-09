class ProfilesController < ApplicationController

  def index
    @profiles = Profile.all
  end

  def new
    @user = User.find params[:id]
    @profile = Profile.new
    @profile.users_id = params[:id]
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def create
    profile = Profile.create(profile_params)
    user = User.find_by users_id: profile[:users_id]
    user.profiles_id = profile.id
    user.save

    redirect_to '/profiles'
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def profile_params
    params.require(:profile).permit(:image_url, :name, :location, :bio, :hair, :user_type)
  end

end

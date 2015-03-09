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
    if sessions[:access_token]
      @profile             =  response.user
      @profile.profile_pic =  response.user.profile_picture
      @profile.user_type   =  nil
      @profile.location    =  nil
      @profile.hair        =  nil
    else sessions[:user_id]
      @profile = Profile.create(profile_params)
    end
      user = User.find_by id: profile[:users_id]
      user.profiles_id = profile.id
      profile.save
      redirect_to '/show/profile'
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def profile_params
    params.require(:profile).permit(:name, :bio, :website, :profile_pic, :full_name, :id, :users_type, :location, :hair)
  end

end

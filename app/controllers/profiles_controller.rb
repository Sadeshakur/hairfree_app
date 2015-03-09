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
    user = User.find_by users_id: profile[:users_id]
    user.profiles_id = profile.id

    if sessions[:access_token]
      @profile             =  response.user
      @profile.username    =  response.user.username
      @profile.bio         =  response.user.bio
      @profile.website     =  response.user.website
      @profile.profile_pic =  response.user.profile_picture
      @account.full_name   =  response.user.full_name
      @profile.id          =  response.user.id
      @profile.user_type   =  nil
      @profile.location    =  nil
      @profile.hair        =  nil
      profile.save
    else sessions[:user_id]
      @profile = Profile.create(profile_params)
      profile.save
    end
      redirect_to '/profiles'
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def profile_params
    params.require(:profile).permit(:name, :bio, :website, :profile_pic, :full_name, :id, :users_type, :location, :hair)
  end

end

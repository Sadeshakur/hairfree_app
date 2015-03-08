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
    @interview = Interview.find(params[:id])
  end

end

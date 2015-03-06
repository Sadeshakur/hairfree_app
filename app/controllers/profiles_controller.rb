class ProfilesController < ApplicationController

def index
  @profiles = Profile.all
end

def show
  @profile = Profile.find(params[:id])
end

def new
  @user = User.find params[:id]
  @profile = Profile.new
end

end

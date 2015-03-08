class ProfilesController < ApplicationController

def index
  @profiles = Profile.all
end

def new
  @user = User.find params[:id]
  @profile = Profile.new
end

def show
  @profile = Profile.find(params[:id])
end


end

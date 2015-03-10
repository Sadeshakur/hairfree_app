class UsersController < ApplicationController

  # before_action(:authenticate, :except => [:new, :create])

  def index
    @users = User.all
  end

  def create
    if session[:access_token]
      @user = User.create
    else
      session[:user_id]
      @user = User.create(user_params)
    end
      user    = User.new
      @user.save
  end

  def new
    @user = User.new
  end

  def user_params
    params.require(:user).permit(:email, :password)
  end

end

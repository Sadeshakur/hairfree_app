class UsersController < ApplicationController

  # before_action(:authenticate, :except => [:new, :create])

  def index
    @users = User.all
  end

  def create
    user = User.create(user_params)
    redirect_to '/welcome'
  end

  def new
    @user = User.new
  end

  def user_params
    params.require(:user).permit(:email, :password)
  end

end

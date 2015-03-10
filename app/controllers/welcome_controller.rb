class WelcomeController < ApplicationController

  def index
  end

  def new
    redirect_to '/users/create'
  end

  def home
  end

end

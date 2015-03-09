class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @profile = Profile.find(params[:id])
    @event   = Event.find(params[:id])
  end

end

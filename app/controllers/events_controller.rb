class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @profile = Profile.find(params[:id])
    @event   = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create(event_params)
    if session[:user_id]
      @event.user_id = params(session[:user_id])
    else session[:access_token]
      @event.user_id = params(session[:access_token])
    end
    @event.save
    redirect_to '/events'
  end

  private

    binding.pry
    def event_params
      params.require(@event).permit(:pic_url, :title, :category, :location, :date, :time, :description)
    end
end

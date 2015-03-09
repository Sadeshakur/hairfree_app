class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @profile = Profile.find(params[:id])
    @event   = Event.find(params[:id])
  end

  def create
    events = Event.create(event_params)
    user = User.find id: event[:user_id]
    user.events_id = event.id

    redirect_to '/events/show'
  end

  def event_params
    params.require(:event).permit(:pic_url, :title, :title, :category, :location, :date, :time, :description, :user_id)
  end
end

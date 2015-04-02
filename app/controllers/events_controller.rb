class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event   = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create(event_params)
    @event.user_id = session[:user_id]
    @event.save
    redirect_to event_path
  end

   def edit
    @event = Event.find(:event_id)
  end

  def update
    event = Event.find(:event_id)
    event.update(event_params)
    redirect_to event_path(event)
  end

  def destroy
    Event.destroy(@event.id)
    redirect_to events_path
  end

  private

    def event_params
      params.require(@event).permit(:pic_url, :title, :category, :location, :date, :time, :description)
    end
end

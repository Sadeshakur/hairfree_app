class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.create(message_params)

    @message.save
    redirect_to 'event'
  end

end

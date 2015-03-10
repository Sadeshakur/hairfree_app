class MessagesController < ApplicationController

  def new
  end

  def index
    @message = Message.all
  end

  def create
    @message = Message.new(params[:new_message])
    @message.user_id = session[:user_id]
    @message.save
    render :json => @message
  end

  def destroy
    @message = Message.find(params[:id]).destroy
    redirect_to '/message/index'
  end

private

  def message_params
    params.require(:message).permit(:new_message)
  end

end

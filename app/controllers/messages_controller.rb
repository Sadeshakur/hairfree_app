class MessagesController < ApplicationController

  def new
  end

  def create
    @message = Message.new(params[:new_message])
    @message.user_id = current_user.id
    @message.save
    redirect_to '/event'
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

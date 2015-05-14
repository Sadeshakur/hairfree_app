class PostsController < ApplicationController

  def new
  end

  def index
    @posts = Post.all
  end

  def create
    @post = Post.new(params[:new_post])
    @post.user_id = session[:user_id]
    @post.save
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

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
    @post = Post.find(params[:id]).destroy
    redirect_to '/post/index'
  end

private

  def post_params
    params.require(:post).permit(:new_post)
  end

end

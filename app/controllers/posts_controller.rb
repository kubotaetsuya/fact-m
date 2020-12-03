class PostsController < ApplicationController

  def index
    @post = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    if @post = Post.new(post_params)
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy

  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
  
end

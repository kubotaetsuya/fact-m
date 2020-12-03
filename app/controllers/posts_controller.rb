class PostsController < ApplicationController

  def index

  end

  def new

  end

  def create

  end

  def destroy

  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
  
end

class PostsController < ApplicationController

  def index
    @tags = ActsAsTaggableOn::Tag.all
    # タグの一覧表示
    if params[:tag]
      @posts = Post.tagged_with(params[:tag])
      # タグ検索時にそのタグずけしているものを表示
    else
      @posts = Post.all
    end
    
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy

  end

  private

  def post_params
    params.require(:post).permit(:title, :text, :tag_list).merge(user_id: current_user.id)
  end
  
end
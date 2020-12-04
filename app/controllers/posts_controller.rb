class PostsController < ApplicationController
  before_action :set_item, only: [:edit, :show, :update, :destroy]

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

  def show
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
    if @post.destroy
      redirect_to root_path
    else
      redirect_to show
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :text, :tag_list).merge(user_id: current_user.id)
  end
  
  def set_item
    @post = Post.find(params[:id])
  end

end
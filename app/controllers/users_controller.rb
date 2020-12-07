class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @posts = current_user.posts
    @post = user_id.post
  end

  def edit
    @post = user_id.post
  end
end

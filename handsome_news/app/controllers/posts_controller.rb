class PostsController < ApplicationController
  def index
    @posts = Post.by_votes
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(params[:post])
    redirect_to posts_path
  end

  def vote
    # params[:vote] 'up'
  end
end

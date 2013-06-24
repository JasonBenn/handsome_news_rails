class PostsController < ApplicationController
  def index
    @posts = Post.by_votes
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(params[:post])
  end


end

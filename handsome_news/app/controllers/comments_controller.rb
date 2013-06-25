class CommentsController < ApplicationController 

  def index
    post = Post.find(params[:post_id])
    @comments = post.comments.all
  end

  def new
    post = Post.find(params[:post_id])
    @comment = post.comments.new
  end

  def create
    post = Post.find(params[:post_id])
    comment = current_user.comments.build(params[:comment])
    post.comments << comment
    post.save
    redirect_to post_comments_path(post)
  end
end

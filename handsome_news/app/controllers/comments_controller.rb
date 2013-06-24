class CommentsController < ApplicationController 

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    comment = Comment.create(params[:comment])
    redirect_to post_comments_path(comment)
  end
end

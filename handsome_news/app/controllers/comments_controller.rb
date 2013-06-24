class CommentsController < ApplicationController 

  def index
  end

  def new
    @comment = Comment.new
  end

  def create
    comment = Comment.create(params[:comment])
    redirect_to post_comments_path(comment)
  end
end

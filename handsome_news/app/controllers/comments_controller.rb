class CommentsController < ApplicationController 
  before_filter :find_post

  def index
    @comments = @post.comments.all
    @comment = @post.comments.build
  end

  def new
    @comment = @post.comments.build
  end

  def create                              
    @comment = Comment.init_with_post_and_user(current_user, @post)
    @comment.save
    redirect_to post_comments_path(post)
  end

  private


  def find_post
    @post = Post.find(params[:post_id])
  end


end

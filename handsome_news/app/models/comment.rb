class Comment < ActiveRecord::Base
  attr_accessible :text

  belongs_to :user
  belongs_to :post

  def init_with_post_and_user(user, post)
    new(user: user, post: post)
  end

end

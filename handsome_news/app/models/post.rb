class Post < ActiveRecord::Base
  attr_accessible :title, :link_url
  has_many :votes
  has_many :comments

  scope :by_votes, joins('left join votes on votes.post_id = posts.id').
    select('posts.*, sum(votes.value) as vote_total').
    group('posts.id').
    order('vote_total DESC')


  # def self.by_votes
  #   joins('left join votes on votes.post_id = posts.id').
  #   select('posts.*, sum(votes.value) as vote_total').
  #   group('posts.id').
  #   order('vote_total DESC')
  # end

end

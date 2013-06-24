class Post < ActiveRecord::Base
  def self.by_votes
    joins('left join votes on votes.post_id = posts.id').
    select('posts.*, sum(votes.value) as vote_total').
    group('posts.id').
    order('vote_total DESC')
  end

end

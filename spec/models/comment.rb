require 'post'

class Comment
  include Mongoid::Voteable
  include Mongoid::Document

  field :content

  belongs_to :post
  
  voteable self, :up => +1, :down => -3
  voteable Post, :up => +2, :down => -1
end

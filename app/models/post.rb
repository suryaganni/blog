class Post < ActiveRecord::Base
  attr_accessible :content, :title

  validates :content, :presence => true
  validates :title, :presence => true

  def self.search_in_posts word
    Post.where(['title LIKE ? OR content LIKE ?', "%#{word}%", "%#{word}%"])
  end
end

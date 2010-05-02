class Article < ActiveRecord::Base
  validates :title, :presence => true
  validates :body, :presence => true

  belongs_to :user
  
  def long_title
    "#{title} - #{published_at}"
  end
end
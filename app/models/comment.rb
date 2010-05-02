class Comment < ActiveRecord::Base
  belongs_to :article
  
  validate :article_should_be_published

  def article_should_be_published
    errors.add(:article_id, "is not published yet") if article && !article.published?
  end  
end

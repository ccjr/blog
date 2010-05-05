class CommentObserver < ActiveRecord::Observer
  def after_create(comment)
    Notifier.comment_added(comment).deliver
  end
end

class CommentsController < ApplicationController
  before_filter :load_article, :except => :destroy
  before_filter :authenticate, :only => :destroy

  def create
    @comment = @article.comments.new(params[:comment])
    if @comment.save
      respond_to do |format|
        format.html { redirect_to @article, :notice => t('comments.create_success') }
        format.js
      end
    else
      respond_to do |format|
        format.html { redirect_to @article, :alert => t('comments.create_failure') }
        format.js { render 'fail_create.js.erb' }
      end
    end
  end
  
  def destroy
    @article = current_user.articles.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to @article, :notice => t('comments.destroy_success') }
      format.js
    end
  end
  
  private
    def load_article
      @article = Article.find(params[:article_id])
    end
end

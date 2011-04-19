class ApplicationController < ActionController::Base
  include AuthenticatedSystem
  protect_from_forgery
  helper_method :get_categories
  before_filter :get_categories
  before_filter :get_new_articles

  def get_new_articles
    @new_articles = Article.recent
  end

  def get_categories
    @categories = Category.all
  end
end

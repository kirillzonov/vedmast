class ApplicationController < ActionController::Base
  include AuthenticatedSystem
  protect_from_forgery
  helper_method :get_categories
  before_filter :get_categories

  def get_categories
    @categories = Category.all
  end
end

class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :get_categories

  def get_categories
    @categories = Category.all
  end
end

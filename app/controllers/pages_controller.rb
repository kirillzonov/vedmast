class PagesController < ApplicationController
  before_filter :get_categories
  def index
    @pages = Page
  end

end

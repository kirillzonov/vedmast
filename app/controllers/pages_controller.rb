class PagesController < ApplicationController
  before_filter :get_categories
  def index
    @pages = RedCloth.new(Page.find_by_name('index').content).to_html 
  end

end

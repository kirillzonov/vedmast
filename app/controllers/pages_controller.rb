class PagesController < ApplicationController
  before_filter :get_categories
  def index
    @index = RedCloth.new(Page.find_by_name('index').content).to_html 
    @admin_index = RedCloth.new(Page.find_by_name('admin_index').content).to_html 
  end

end

class PagesController < ApplicationController
  before_filter :get_categories
  inherit_resources
  def index
    @index_html = RedCloth.new(Page.find_by_name('index').content).to_html 
    @index = Page.find_by_name('index')
#    @admin_index = RedCloth.new(Page.find_by_name('admin_index').content).to_html 
  end

end

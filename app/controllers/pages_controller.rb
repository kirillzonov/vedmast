class PagesController < ApplicationController
  before_filter :get_categories
  inherit_resources
  def index
    @page = 'index'
    @index_html = RedCloth.new(Page.find_by_name('index').content).to_html 
    @index = Page.find_by_name('index')
  end
  def delivery
    @delivery_html = RedCloth.new(Page.find_by_name('delivery').content).to_html 
    @delivery = Page.find_by_name('delivery')
  end

end

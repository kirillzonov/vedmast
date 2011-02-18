class HomeController < ApplicationController
  before_filter :get_categories
  def index
    if Main.last
      @main = RedCloth.new(Main.last.main).to_html
    end
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @categories }
    end
  end
end

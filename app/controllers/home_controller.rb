class HomeController < ApplicationController
  def index
    @news = News.all
    @main = RedCloth.new(Main.last.main).to_html
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @categories }
    end
  end
end

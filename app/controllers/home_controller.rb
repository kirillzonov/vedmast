class HomeController < ApplicationController
  def index
    @main = RedCloth.new(Main.last.main).to_html
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @categories }
    end
  end
end

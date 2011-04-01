class OrdersController < ApplicationController
  def index
    @articles = []
    if session[:articles_id]
      session[:articles_id].each do |a|
        @articles << Article.find(a)
      end
    end
  end

end

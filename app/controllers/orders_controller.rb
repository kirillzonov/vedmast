class OrdersController < ApplicationController
  def index
    @articles = []
    if session[:articles_id]
      session[:articles_id].each do |a|
        @articles << Article.find(a)
      end
    end
  end
  def create 
    @article = Article.find(params[:article_id])
    session[:articles_id] ? session[:articles_id] << params[:article_id] : session[:articles_id] = [params[:article_id]]
    respond_to do |format|
         format.html { redirect_to(@article, :notice => 'Товар добавлен в корзину') }
    end
  end
  def destroy
    session[:articles_id].delete(params[:id])
    redirect_to orders_path
  end

end

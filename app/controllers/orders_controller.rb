class OrdersController < ApplicationController
  def index
    @articles = []
    if session[:articles_id]
      session[:articles_id].each do |a|
        @articles << Article.find(a)
      end
    end
  end
  def new
    @order = Order.new
  end
  def create
    @order = Order.new(params[:order])
    @order.articles = Article.find(session[:articles_id])
    respond_to do |format|
      if @order.save
        format.html { redirect_to(root_path, :notice => 'Мастер будет уведомлен о Вашем заказе.') }
        session[:articles_id] = nil
      else
        format.html { render :action => "new" }
      end
    end
  end
  def destroy
    session[:articles_id].delete_at session[:articles_id].find_index(params[:id])
    redirect_to orders_path
  end
  def show 
    @article = Article.find(params[:id])
    session[:articles_id] ? session[:articles_id] << params[:id] : session[:articles_id] = [params[:id]]
    respond_to do |format|
         format.html { redirect_to(@article, :notice => 'Товар добавлен в корзину') }
    end
  end

end

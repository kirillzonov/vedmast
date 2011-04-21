class CategoriesController < ApplicationController
  inherit_resources
  before_filter :get_categories

  # GET /categories/1
  # GET /categories/1.xml
  def show
    @page = 'products'
    @category = Category.find(params[:id])
    @articles = @category.articles.page(params[:page]).per(3)

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @category }
    end
  end
end

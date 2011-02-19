class Admin::ArticlesController < ApplicationController
  before_filter :login_required
  before_filter :get_categories
  # GET /admin/articles
  # GET /admin/articles.xml
  def index
    @admin_articles = Article.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /admin/articles/1
  # GET /admin/articles/1.xml
  def show
    @admin_article = Article.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /admin/articles/new
  # GET /admin/articles/new.xml
  def new
    @admin_article = Article.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /admin/articles/1/edit
  def edit
    @admin_article = Article.find(params[:id])
  end

  # POST /admin/articles
  # POST /admin/articles.xml
  def create
    @admin_article = Article.new(params[:article])

    respond_to do |format|
      if @admin_article.save
        format.html { redirect_to([:admin,@admin_article], :notice => 'Article was successfully created.') }
      else
        format.html { render :action => "new" }
      end
    end
  end

  # PUT /admin/articles/1
  # PUT /admin/articles/1.xml
  def update
    @admin_article = Article.find(params[:id])

    respond_to do |format|
      if @admin_article.update_attributes(params[:article])
        format.html { redirect_to([:admin,@admin_article], :notice => 'Article was successfully updated.') }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  # DELETE /admin/articles/1
  # DELETE /admin/articles/1.xml
  def destroy
    @admin_article = Article.find(params[:id])
    @admin_article.destroy

    respond_to do |format|
      format.html { redirect_to(admin_articles_url) }
    end
  end
end

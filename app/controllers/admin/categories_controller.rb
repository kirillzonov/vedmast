class Admin::CategoriesController < ApplicationController
  before_filter :get_categories
  # GET /admin/categories
  # GET /admin/categories.xml
  def index
    @admin_categories = Category.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @admin_categories }
    end
  end

  # GET /admin/categories/1
  # GET /admin/categories/1.xml
  def show
    @admin_category = Category.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @admin_category }
    end
  end

  # GET /admin/categories/new
  # GET /admin/categories/new.xml
  def new
    @admin_category = Category.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @admin_category }
    end
  end

  # GET /admin/categories/1/edit
  def edit
    @admin_category = Category.find(params[:id])
  end

  # POST /admin/categories
  # POST /admin/categories.xml
  def create
    @admin_category = Category.new(params[:category])

    respond_to do |format|
      if @admin_category.save
        format.html { redirect_to([:admin,@admin_category], :notice => 'Category was successfully created.') }
      else
        format.html { render :action => "new" }
      end
    end
  end

  # PUT /admin/categories/1
  # PUT /admin/categories/1.xml
  def update
    @admin_category = Category.find(params[:id])

    respond_to do |format|
      if @admin_category.update_attributes(params[:category])
        format.html { redirect_to([:admin,@admin_category], :notice => 'Category was successfully updated.') }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  # DELETE /admin/categories/1
  # DELETE /admin/categories/1.xml
  def destroy
    @admin_category = Category.find(params[:id])
    @admin_category.destroy

    respond_to do |format|
      format.html { redirect_to(admin_categories_url) }
      format.xml  { head :ok }
    end
  end
end

class Admin::PagesController < ApplicationController
  before_filter :get_categories
  before_filter :login_required
  # GET /admin/pages
  # GET /admin/pages.xml
  def index
    @admin_pages = Page.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /admin/pages/1
  # GET /admin/pages/1.xml
  def show
    @admin_page = Page.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /admin/pages/new
  # GET /admin/pages/new.xml
  def new
    @admin_page = Page.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /admin/pages/1/edit
  def edit
    @admin_page = Page.find(params[:id])
  end

  # POST /admin/pages
  # POST /admin/pages.xml
  def create
    @admin_page = Page.new(params[:page])

    respond_to do |format|
      if @admin_page.save
        format.html { redirect_to([:admin,@admin_page], :notice => 'Page was successfully created.') }
      else
        format.html { render :action => "new" }
      end
    end
  end

  # PUT /admin/pages/1
  # PUT /admin/pages/1.xml
  def update
    @admin_page = Page.find(params[:id])

    respond_to do |format|
      if @admin_page.update_attributes(params[:page])
        format.html { redirect_to([:admin,@admin_page], :notice => 'Page was successfully updated.') }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  # DELETE /admin/pages/1
  # DELETE /admin/pages/1.xml
  def destroy
    @admin_page = Page.find(params[:id])
    @admin_page.destroy

    respond_to do |format|
      format.html { redirect_to(admin_pages_url) }
    end
  end
end

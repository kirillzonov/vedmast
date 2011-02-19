class Admin::InformationController < ApplicationController
  before_filter :get_categories
  # GET /admin/information
  # GET /admin/information.xml
  def index
    @admin_informations = Admin::Information.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @admin_informations }
    end
  end

  # GET /admin/information/1
  # GET /admin/information/1.xml
  def show
    @admin_information = Admin::Information.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @admin_information }
    end
  end

  # GET /admin/information/new
  # GET /admin/information/new.xml
  def new
    @admin_information = Admin::Information.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @admin_information }
    end
  end

  # GET /admin/information/1/edit
  def edit
    @admin_information = Admin::Information.find(params[:id])
  end

  # POST /admin/information
  # POST /admin/information.xml
  def create
    @admin_information = Admin::Information.new(params[:admin_information])

    respond_to do |format|
      if @admin_information.save
        format.html { redirect_to(@admin_information, :notice => 'Information was successfully created.') }
        format.xml  { render :xml => @admin_information, :status => :created, :location => @admin_information }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @admin_information.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/information/1
  # PUT /admin/information/1.xml
  def update
    @admin_information = Admin::Information.find(params[:id])

    respond_to do |format|
      if @admin_information.update_attributes(params[:admin_information])
        format.html { redirect_to(@admin_information, :notice => 'Information was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @admin_information.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/information/1
  # DELETE /admin/information/1.xml
  def destroy
    @admin_information = Admin::Information.find(params[:id])
    @admin_information.destroy

    respond_to do |format|
      format.html { redirect_to(admin_informations_index_url) }
      format.xml  { head :ok }
    end
  end
end

class Admin::QuestionsController < ApplicationController
  # GET /admin/questions
  # GET /admin/questions.xml
  def index
    @admin_questions = Admin::Question.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @admin_questions }
    end
  end

  # GET /admin/questions/1
  # GET /admin/questions/1.xml
  def show
    @admin_question = Admin::Question.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @admin_question }
    end
  end

  # GET /admin/questions/new
  # GET /admin/questions/new.xml
  def new
    @admin_question = Admin::Question.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @admin_question }
    end
  end

  # GET /admin/questions/1/edit
  def edit
    @admin_question = Admin::Question.find(params[:id])
  end

  # POST /admin/questions
  # POST /admin/questions.xml
  def create
    @admin_question = Admin::Question.new(params[:admin_question])

    respond_to do |format|
      if @admin_question.save
        format.html { redirect_to(@admin_question, :notice => 'Question was successfully created.') }
        format.xml  { render :xml => @admin_question, :status => :created, :location => @admin_question }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @admin_question.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/questions/1
  # PUT /admin/questions/1.xml
  def update
    @admin_question = Admin::Question.find(params[:id])

    respond_to do |format|
      if @admin_question.update_attributes(params[:admin_question])
        format.html { redirect_to(@admin_question, :notice => 'Question was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @admin_question.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/questions/1
  # DELETE /admin/questions/1.xml
  def destroy
    @admin_question = Admin::Question.find(params[:id])
    @admin_question.destroy

    respond_to do |format|
      format.html { redirect_to(admin_questions_url) }
      format.xml  { head :ok }
    end
  end
end

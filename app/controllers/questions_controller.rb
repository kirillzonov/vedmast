class QuestionsController < ApplicationController
  inherit_resources
  # GET /questions
  # GET /questions.xml
  def index
    @page = 'faq'
    @visible_questions = Question.visible_questions

    index!
  end

  def show
    @page = 'faq'
    show!
  end

 def create
    @question = Question.new(params[:question])

    respond_to do |format|
      if @question.save
        QuestionMailer.new_question(@question).deliver
        format.html { redirect_to(questions_path, :notice => 'Question was successfully created.') }
        format.xml  { render :xml => @question, :status => :created, :location => @question }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @question.errors, :status => :unprocessable_entity }
      end
    end
  end
   def update
    @question = Question.find(params[:id])

    respond_to do |format|
      if @question.update_attributes(params[:question])
        QuestionMailer.new_comment(@question).deliver
        format.html { redirect_to(@question, :notice => 'Question was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @question.errors, :status => :unprocessable_entity }
      end
    end
  end
end

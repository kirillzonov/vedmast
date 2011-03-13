class QuestionsController < ApplicationController
  inherit_resources
  # GET /questions
  # GET /questions.xml
  def index
    @questions = Question.all
    @visible_questions = Question.visible_questions

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @questions }
    end
  end
end

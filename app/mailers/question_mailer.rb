class QuestionMailer < ActionMailer::Base
  default :from => "vedmast"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.question_mailer.new_question.subject
  #
  def new_question(question)
    @question = question
    @url = "http://vedmast.heroku.com#{edit_question_path(@question)}"
    mail :to => "kirill.zonov@flatsoft.com"
  end
end

class Question < ActiveRecord::Base
  scope :visible_question, where('visible == true')
end

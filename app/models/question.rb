class Question < ActiveRecord::Base
  scope :visible_questions, where(:visible => true)
end

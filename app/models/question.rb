class Question < ActiveRecord::Base
  scope :visible_questions, where(:visible => true)
  validates_presence_of :content
  validates :email, :presence   => true,
                    :format     => { :with => Authentication.email_regex, :message => Authentication.bad_email_message },
                    :length     => { :within => 6..100 }
end

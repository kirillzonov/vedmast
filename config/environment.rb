# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Obereg::Application.initialize!
Obereg::Application.configure do
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
  :address => "smtp.gmail.com" ,
  :port => 587,
#  :domain => " domain.of.sender.net " ,
  :authentication => "plain" ,
  :user_name => "graffzon@gmail.com" ,
  :password => "pG93fzTK" ,
  :enable_starttls_auto => true
  }

end


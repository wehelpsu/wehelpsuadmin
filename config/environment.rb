# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Wehelpsu::Application.initialize!
ActionMailer::Base.smtp_settings = {
  address: "smtp.gmail.com",
  port: 587,
  :user_name  => "wehelpsu@gmail.com",
  :password  => "8740203144",
  :authentication  => :login
}
# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :address => 'smtp.gmail.net',
  :port => 587,
  :domain => 'www.gmail.com',
  :authentication => :plain,
  :user_name => 'greyling.douglas@gmail.com',
  :password => Rails.application.credentials.action_mailer[:password],
  :enable_starttls_auto => true
}
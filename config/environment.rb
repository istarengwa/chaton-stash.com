# Load the Rails application.
require_relative "application"

#ActionMailer::Base.smtp_settings = {
#  user_name: ENV["GMAIL_LOGIN"],
#  password: ENV["GMAIL_PWD"],
#  domain: "example.com",
#  address: "smtp.gmail.com",
#  port: 587,
#  athentication: :plain,
#  enable_starttls_auto: true
#}

# Initialize the Rails application.
Rails.application.initialize!

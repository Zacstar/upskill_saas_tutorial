# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings= {
    :port       => ENV['MAILGUN_SMTP_PORT'],
    :adress     => ENV['MAILGUN_SMTP_SERVER'],
    :user_name  => ENV['MAILGUN_SMTP_LOGIN'],
    :domain     => 'shrouded-cove-17130.herokuapp.com',
    :authentication => :plain,
}
ActionMailer::Base.delivery_method = :smtp

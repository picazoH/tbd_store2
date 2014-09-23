# Use this initializer to configure the contact mailer.

SpreeContactUs.setup do |config|

  # ==> Mailer Configuration
  ActionMailer::Base.smtp_settings = {
      :address              => "XXXX",
      :port                 => 587,
      :domain               => 'XXXXX',
      :user_name            => 'XXXXX',
      :password             => 'XXXXX',
      :authentication       => 'plain',
      :enable_starttls_auto => true
  }

  ActionMailer::Base.default_options = {
      :bcc_to => "xxxxx"
  }

  # Configure the e-mail address which email notifications should be sent from.  If emails must be sent from a verified email address you may set it here.
  # Example:
  # config.mailer_from = "contact@please-change-me.com"
  config.mailer_from = "XXXX.com"

  # Configure the e-mail address which should receive the contact form email notifications.
  config.mailer_to = "XXXXX"

  # ==> Form Configuration

  # Configure the form to ask for the users name.
  config.require_name = false

  # Configure the form to ask for a subject.
  config.require_subject = false

end
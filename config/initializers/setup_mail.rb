ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "transfair.co",
  :user_name            => "info@transfair.co",
  # Ask Nico for the password
  # After entrering the password, run:
  # git update-index --assume-unchanged ./config/initializers/setup_mail.rb
  :password             => "Ask nico for the password",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

class DevelopmentMailInterceptor
  def self.delivering_email(message)
    message.subject = "[#{message.to}] #{message.subject}"
    message.to      = "nicolas.fricke@gmail.com"
  end
end

ActionMailer::Base.default_url_options[:host] = "0.0.0.0:3000"

require './lib/development_mail_interceptor.rb'
ActionMailer::Base.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?

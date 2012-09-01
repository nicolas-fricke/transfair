ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "transfair.co",
  :user_name            => "info@transfair.co",
  # Ask Nico for the password, then set it as an environment variable
  :password             => ENV["TRANSFAIR_GMAIL_PASS"],
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

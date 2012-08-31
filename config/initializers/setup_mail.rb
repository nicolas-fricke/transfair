ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "transfair.co",
  :user_name            => "info@transfair.co",
  :password             => "e6@6@Ncr",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

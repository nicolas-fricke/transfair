class UserMailer < ActionMailer::Base
  default from: "info@transfair.co"

  def registration_confirmation(user)
    mail(:to => user.email, :subject => "Registered")
  end
end

class EmailMeMailer < ApplicationMailer
    default from: "info@example.com"

  def confirmation(email)
    @greeting = "Hi"
    @email = email

    mail to: "my_email_address@gmail.com", subject: "subscribtion confirmation"
  end
end
class UserMailer < ApplicationMailer
  def test_mail(emailAddress)
    puts 'sending test mail'
    mail(to: emailAddress, subject: 'rails-background-test')
  end
end
class HomeController < ApplicationController
  def index
  end

  def send_emails
    UserMailer.test_mail(user).deliver_later

    redirect_to root_path
  end
end

class HomeController < ApplicationController
  def index
  end

  def send_emails
    # Resque.enqueue(SleepingJob)
    UserMailer.test_mail('wmantegna@gmail.com').deliver_later

    redirect_to root_path
  end
end

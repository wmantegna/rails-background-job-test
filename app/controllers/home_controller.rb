class HomeController < ApplicationController
  def index
  end

  def send_emails
    # UserMailer.test_mail('wmantegna@gmail.com').deliver_now
    UserMailer.test_mail('wmantegna@gmail.com').deliver_later

    redirect_to root_path
  end
  def enqueue_task
    Resque.enqueue(SleepingJob)
  end
end

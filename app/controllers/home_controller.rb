class HomeController < ApplicationController
  def index
  end

  def send_email_now
    UserMailer.test_mail('wmantegna@gmail.com').deliver_now
    redirect_to root_path
  end
  def send_email_later
    UserMailer.test_mail('wmantegna@gmail.com').deliver_later
    redirect_to root_path
  end
  def enqueue_tasks
    Resque.enqueue(SleepingJob)

    redirect_to root_path
  end
end

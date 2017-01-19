Rails.application.routes.draw do
  get 'home/index'
  
  patch 'send_emails', to: 'home#send_emails', as: :send_emails

  root 'home#index'
end

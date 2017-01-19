Rails.application.routes.draw do
  get 'home/index'
  
  resources :home, only: [:none] do
    collection do
      post :send_emails
      post :enqueue_task
    end
  end
  

  root 'home#index'
end

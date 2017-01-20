Rails.application.routes.draw do

  get 'home/index'  
  resources :home, only: [:none] do
    collection do
      post :send_email_now
      post :send_email_later
      post :enqueue_tasks
    end
  end
  
  resources :items, only: [:index, :create]
  

  root 'items#index'
end

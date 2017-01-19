Rails.application.routes.draw do
  get 'home/index'
  
  resources :home, only: [:none] do
    collection do
      post :send_emails
    end
  end
  

  root 'home#index'
end

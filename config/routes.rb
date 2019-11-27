Rails.application.routes.draw do

  devise_for :users
  root to: "tweets#index"
  namespace :tweets do
    resources :searches, only: :index
    
  end

  
  

  resources :tweets do
    resources :comments, only: [:create]
    # collection do  
    #   get 'search'  
    # end 
  end  
  resources :comments, only: [:destroy]
  resources :users, only: :show
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

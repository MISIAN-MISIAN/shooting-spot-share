Rails.application.routes.draw do

  devise_for :users
  root to: "tweets#index"
  resources :tweets
  resources :users, only: :show
  # resources :tweets, only: [:index, :new, :create, :destroy, :edit, :update, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

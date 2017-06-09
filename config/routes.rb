Rails.application.routes.draw do
  resources :relies
  resources :posts
  resources :items
  resources :shops
  root 'home#index'

  devise_for :users 
  resources :conversations, only: [:create] do
    member do
      post :close
    end
    resources :messages, only: [:create]
  end
end

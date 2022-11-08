Rails.application.routes.draw do
  devise_for :users
  root to: 'tweets#index'
  resources :tweets
  resources :users, only: [:show] do
  member do
    get :follows, :followers
  end
end
  resource :relationships, only: [:create, :destroy]
end

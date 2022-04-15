Rails.application.routes.draw do
  root to: 'movies#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'signup', to: 'users#new'
  
  resources :movies, only: [:index, :show]
  resources :genres
  resources :users
end


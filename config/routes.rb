Rails.application.routes.draw do
  root to: 'toppages#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  

  resources :movies
  resources :genres
  resources :users
end

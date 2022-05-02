Rails.application.routes.draw do
  resources :movies do
    collection do
      get 'search'
    end
  end
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  root to: 'movies#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  
  resources :movies, only: [:index, :show]
  resources :genres
  resources :users
end


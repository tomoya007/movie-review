Rails.application.routes.draw do
  resources :movies do
    collection do
      get 'search'
      get 'conditional_search' # 条件検索
    end
  end
  root to: 'movies#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  
  resources :movies
  resources :genres
  resources :users
  resources :reviews
end


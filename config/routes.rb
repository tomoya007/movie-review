Rails.application.routes.draw do
  get 'relationships/create'
  get 'relationships/destroy'
  # ログイン、アカウント編集後、任意のページに推移させるための記述
  devise_for :users, controllers: {
    registrations: 'users/registrations'
}
  
  resources :movies do
    collection do
      get 'search'
      get 'conditional_search' 
    end
  end
  root to: 'movies#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  resources :movies
  resources :movielists, only: [:create, :destroy]
  resources :list_movies

  resources :users do
    member do
      get :followings, :followers, :watched, :want
    end
  end

  resources :reviews 

  resources :relationships, only: [:create, :destroy]

  resources :genres

  post 'list_movies/create', to: 'list_movies#create'
  post 'list_movies/create_watched', to: 'list_movies#create_watched'
  post 'list_movies/create_watched_from_want', to: 'list_movies#create_watched_from_want'
  post 'list_movies/create_want', to: 'list_movies#create_want'
  post 'list_movies/create_recommend', to: 'list_movies#create_recommend'
  delete 'list_movies/destroy', to: 'list_movies#destroy'
end


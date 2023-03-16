Rails.application.routes.draw do
  get 'toppages/index'
  get 'relationships/create'
  get 'relationships/destroy'
  # ログイン、アカウント編集後、任意のページに推移させるための記述
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    passwords: 'users/passwords'
}

devise_scope :user do
  post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
end

get '/about', to: 'layouts#about'
  
  resources :movies do
    collection do
      get 'search'
      get 'conditional_search' 
    end
  end
  root to: 'toppages#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  resources :movies
  resources :movielists, only: [:create, :destroy]
  resources :list_movies

  resources :users do
    member do
      get :watched, :want, :followings, :followers
    end
  end

  resources :comments, only: [:create, :destroy] do
    resources :likes, only: [:create, :destroy]
  end

  resources :relationships, only: [:create, :destroy]

  get '/search_movies_result', to: 'searchs#search_movies'
  get '/search_filter', to: 'searchs#search_filter' 
  get '/search', to: 'searchs#discover'
  get '/genres', to: 'searchs#show_genre'
  get '/years', to: 'searchs#show_single_year'

  post 'list_movies/create', to: 'list_movies#create'
  post 'list_movies/create_watched', to: 'list_movies#create_watched'
  post 'list_movies/create_watched_from_want', to: 'list_movies#create_watched_from_want'
  post 'list_movies/create_want', to: 'list_movies#create_want'
  delete 'list_movies/destroy', to: 'list_movies#destroy'

  post 'like/:id', to: 'likes#create', as: 'create_like'
  delete 'like/:id', to: 'likes#destroy', as: 'destroy_like'
end


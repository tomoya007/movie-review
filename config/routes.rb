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
      get 'conditional_search' # 条件検索
    end
  end
  root to: 'movies#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  resources :movies
  resources :users, only: [:index, :show] do
    member do
      get :followings
      get :followers
    end
  end

  resources :relationships, only: [:create, :destroy]

  resources :reviews
  get 'reviews/new' => 'reviews#new'
  # ここから
  get 'reviews'     => 'reviews#index'
  # ここまで追加
  post 'reviews'    => 'reviews#create'
  # これで「GETメソッドでpostsパスにアクセスするとpostsコントローラーのindexアクションにアクセスする」という設定ができます
end


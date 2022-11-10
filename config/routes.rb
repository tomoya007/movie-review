Rails.application.routes.draw do
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

  resources :users, only: [:index, :show] 

  resources :reviews do 
    resources :comments, only: [:create] 
  end
end


Myapp::Application.routes.draw do

  get 'launchpad' => 'launchpad#index', as: 'launchpad'
  get 'dashboard' => 'dashboard#index', :as => :dashboard

  resources :users, only: [:show]
     
  # get 'user_sessions/new'
  # get 'user_sessions/create'
  # get 'user_sessions/destroy'
  # resources :user_sessions
  resources :user_sessions, only: [:new, :create, :destroy]
  # get 'password_resets/create'
  # get 'password_resets/edit'
  # get 'password_resets/update'
  resources :password_resets, only: [:create, :edit, :update]
  
  get 'login' => 'user_sessions#new', as: :login
  get 'logout' => 'user_sessions#destroy', as: :logout

  # get "home/index"
  # get "home/minor"

  root to: 'launchpad#index'

end

Myapp::Application.routes.draw do
  # get 'user_sessions/new'
  # get 'user_sessions/create'
  # get 'user_sessions/destroy'
  resources :user_sessions
  resources :users
  # get 'password_resets/create'
  # get 'password_resets/edit'
  # get 'password_resets/update'
  resources :password_resets
  get 'login' => 'user_sessions#new', as: :login
  get 'logout' => 'user_sessions#destroy', as: :logout
  get 'launchpad/index'

  get 'dashboard' => 'dashboard#index', :as => :dashboard
  # get "home/index"
  get "home/minor"

  root to: 'launchpad#index'

end

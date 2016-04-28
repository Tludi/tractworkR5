Myapp::Application.routes.draw do
  get 'launchpad/index'

  get 'dashboard' => 'dashboard#index', :as => :dashboard
  # get "home/index"
  get "home/minor"

  root to: 'launchpad#index'

end

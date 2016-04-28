Myapp::Application.routes.draw do
  get 'launchpad/index'

  get 'home' => 'home#index', :as => :home
  # get "home/index"
  get "home/minor"

  root to: 'launchpad#index'

end

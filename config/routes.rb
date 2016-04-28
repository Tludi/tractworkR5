Myapp::Application.routes.draw do
  get 'launchpad/index'

  get "home/index"
  get "home/minor"

  root to: 'launchpad#index'

end

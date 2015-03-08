Rails.application.routes.draw do

  root   'welcome#home'
  get    '/login'             =>    'sessions#index'
  post   '/login'             =>    'sessions#create'
  get    '/logout'            =>    'sessions#destroy'

  get    '/signup'            =>    'users#new'

  scope  :oauth do
    get  'connect',           to:   'sessions#auth'
    get  'callback',          to:   'sessions#callback'
  end

  get    '/home'              =>    'welcome#home'
  get    '/welcome'           =>    'welcome#new'

  get    '/profiles'          =>    'profiles#index'
  get    '/profiles/show/:id' =>    'profiles#show'
  get    '/profile/new'       =>    'profiles#new'

  get    '/events'            =>    'events#index'
  get    '/events/show/:id'   =>    'events#show'
  get    '/events/new'        =>    'events#new'


  # get    '/signup'    =>    'users#new'
end

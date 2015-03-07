Rails.application.routes.draw do

  root   'welcome#home'
  get    '/login'         =>    'sessions#index'
  post   '/login'         =>    'sessions#create'
  get    '/logout'        =>    'sessions#destroy'

  get    '/signup'        =>    'users#new'

  scope  :oauth do
    get  'connect',       to:   'sessions#auth'
    get  'callback',      to:   'sessions#callback'
  end

  get    '/home'          =>    'welcome#index'
  get    '/welcome'       =>    'welcome#new'

  get    '/profiles'      =>    'profiles#index'
  get    '/profile'       =>    'profiles#show'

  get    '/events'        =>    'events#index'
  get    '/events/:id'    =>    'events#show'
  get    '/events/new'    =>    'events#new'


  # get    '/signup'    =>    'users#new'
end

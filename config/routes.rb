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

  get    '/profile'           =>    'profiles#show'
  get    '/event'             =>    'events#show'

  resources :profiles
  resources :events
  resources :messages

end

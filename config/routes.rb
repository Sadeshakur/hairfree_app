Rails.application.routes.draw do

  root   'welcome#home'
  get    '/login'     =>    'sessions#index'
  post   '/login'     =>    'sessions#create'
  get    '/signup'    =>    'users#new'
  get    '/logout'    =>    'sessions#destroy'

  scope :oauth do
    get 'connect',  to: 'sessions#auth'
    get 'callback', to: 'sessions#callback'
  end

  get    '/welcome'   =>    'welcome#new'
  get    '/home'      =>    'welcome#index'
  get    '/profile'   =>    'profiles#index'
  get    '/event'     =>    'events#index'

  # get    '/signup'    =>    'users#new'
end

Rails.application.routes.draw do
  root to: 'blogs#index'

  get 'signin', to: 'sessions#new', as: 'signin'
  post 'sessions' => 'sessions#create'
  get 'signout', to: 'sessions#destroy', as: 'signout'
  get 'dashboard', to: 'admin/dashboard#index', as: 'dashboard'

  resources :members

end

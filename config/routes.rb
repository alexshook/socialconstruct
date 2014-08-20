Rails.application.routes.draw do
  root to: 'blogs#index'

  get 'signin', to: 'sessions#new'
  post 'signin', to: 'sessions#create'
  get 'signout', to: 'sessions#destroy'
  get 'dashboard', to: 'admin/dashboard#index'

  resources :members

end

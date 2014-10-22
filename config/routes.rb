Rails.application.routes.draw do
  root to: 'blogs#index'

  get 'signup', to: 'members#new'
  # post 'signup', to: 'member#create'
  get 'signin', to: 'sessions#new'
  post 'signin', to: 'sessions#create'
  get 'signout', to: 'sessions#destroy'
  get 'dashboard', to: 'admin/dashboard#index'

  resources :members
  resources :posts
  resources :blogs
  resources :categories
end

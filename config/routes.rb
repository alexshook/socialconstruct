Rails.application.routes.draw do
  root to: 'categories#index'

  get 'signup', to: 'members#new'
  # post 'signup', to: 'member#create'
  get 'signin', to: 'sessions#new'
  post 'signin', to: 'sessions#create'
  get 'signout', to: 'sessions#destroy'
  get 'dashboard', to: 'admin/dashboard#index'
  get 'fetch', to: 'posts#create'

  resources :members
  resources :posts
  resources :blogs
  resources :categories
  resources :tags
end

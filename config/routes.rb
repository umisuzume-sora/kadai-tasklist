Rails.application.routes.draw do

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
# get 'users/index'
# get 'users/show'
# get 'users/new'
# get 'users/create'
  
  root to: 'tasks#index'
  resources :tasks

  get 'signup', to: 'users#new'
  resources :users, only: [:create]
end

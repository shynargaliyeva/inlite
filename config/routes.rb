Rails.application.routes.draw do
  
  root 'pages#show', page: 'home'
  get '/pages/:page', to: 'pages#show'
  resources :searches
  resources :movies
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new'


end

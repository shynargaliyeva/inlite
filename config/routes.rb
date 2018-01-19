Rails.application.routes.draw do
  
  root 'pages#show', page: 'home'
  get '/pages/:page', to: 'pages#show'
  
  resources :movies
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]

  get '/profile/edit', to: 'users#edit'
  patch '/profile', to: 'users#update'
  get "/profile/movies", to: "users#movies", as: "profile_movies"
  post "/profile/issues/:id", to: "users#addissue", as: "addissue"
  delete "/profile/issues/:id", to: "users#removeissue", as: "removeissue"

  get '/login', to: 'sessions#new'

end

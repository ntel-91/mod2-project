Rails.application.routes.draw do

  
  resources :episodes, only: [:show, :index]
  # post '/episodes', to: 'episodes#create', as: 'create_view'
  resources :shows, only: [:show, :destroy, :create]
  get '/login',  to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#logout', as: 'logout'
  get '/welcome', to: 'shows#welcome', as: 'welcome'
  get '/genres', to: 'shows#genres_page', as: 'genres'
  get '/login', to: 'users#login'
  resources :views, only: [:show, :index]
  post '/views', to: 'views#create'
  # post '/views', to: 'views#create', as: 'create_view'
  
  resources :user_shows
  resources :users
  # resources :views

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

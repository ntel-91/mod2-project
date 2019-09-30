Rails.application.routes.draw do
  root 'sessions#new'
  
  resources :episodes
  resources :shows, only: [:show]
  get '/mainpage',  to: 'sessions#new', as: 'mainpage'
  post '/mainpage', to: 'sessions#create'
  get '/logout', to: 'sessions#logout', as: 'logout'
  get '/welcome', to: 'shows#welcome', as: 'welcome'
  get '/genres', to: 'shows#genres_page', as: 'genres'
  get '/login', to: 'users#login'
  resources :user_shows
  resources :users
  resources :views

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

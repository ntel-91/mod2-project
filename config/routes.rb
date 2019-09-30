Rails.application.routes.draw do
  resources :episodes
  resources :shows, only: [:show]

  get '/welcome', to: 'shows#welcome', as: 'welcome'
  get '/genres/:id', to: 'shows#genres_page', as: 'genres'
  get '/login', to: 'users#login'
  resources :user_shows
  resources :users
  resources :views

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

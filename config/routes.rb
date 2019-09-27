Rails.application.routes.draw do
  resources :episodes
  resources :shows
  resources :user_shows
  resources :users
  resources :views

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

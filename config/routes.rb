Rails.application.routes.draw do
  resources :categories
  resources :gifs, only: [:index]

  root 'gifs#index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
end

Rails.application.routes.draw do
  resources :categories
  resources :gifs
  resources :users, only: [:new, :create, :show]

  namespace :admin do
    resources :categories, only: :index
  end

  root 'dashboard#index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
end

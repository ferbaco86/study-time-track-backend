Rails.application.routes.draw do
  post '/login', to: 'auth#login'
  get 'auto_login', to: 'auth#auto_login'
  get '/longest/:id', to: 'sessions#longest'
  get '/latest/:id', to: 'sessions#latest'
  get '/top/:id', to: 'subjects#top'
  resources :subjects, only: [:create]
  resources :sessions, only: [:create, :show]
  resources :users, only: [:show, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  post '/login', to: 'auth#login'
  get 'auto_login', to: 'auth#auto_login'
  get '/total_time/:id', to: 'subjects#total_time'
  get 'user_is_authed', to: 'auth#user_is_authed'
  resources :subjects, only: [:index, :create]
  resources :sessions, only: [:index, :create, :show]
  resources :users, only: [:index, :show, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  post '/login', to: 'auth#login'
  get 'auto_login' to: 'auth#auto_login'
  get 'user_is_authed' to: 'auth#user_is_authed'
  resources :subjects, only: [:index, :create]
  resources :sessions, only: [:index, :create]
  resources :users, only: [:index, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

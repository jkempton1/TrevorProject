Rails.application.routes.draw do
  resources :users
  resources :stocks

  get 'login', to: 'users#login'
  post 'login', to: 'users#authenticate'

  get 'home/home'
  get 'home/welcome'
  root 'home#welcome'
end

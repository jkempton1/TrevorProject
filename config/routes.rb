Rails.application.routes.draw do
  resources :users
  resources :stocks
  get 'home/index'
  get 'home/welcome'
  root 'home#welcome'
end

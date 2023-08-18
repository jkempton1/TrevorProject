Rails.application.routes.draw do
  devise_for :users
  resources :stonks
  resources :users
  resources :stocks
  get 'home/home'
  get 'home/welcome'
  root to: 'home#welcome'
end

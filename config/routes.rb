Rails.application.routes.draw do
  resources :users
  resources :stocks
  get 'home/home'
  get 'home/welcome'
  root 'home#welcome'
end

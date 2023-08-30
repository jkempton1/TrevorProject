Rails.application.routes.draw do
  root to: "main#index"

  get "currentuser", to: "currentuser#edit"
  patch "currentuser", to: "currentuser#update"
  get "balance", to: "currentuser#balance"
  patch "balance", to: "currentuser#balance"
  
  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  delete "logout", to: "sessions#destroy"

end

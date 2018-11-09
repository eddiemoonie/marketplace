Rails.application.routes.draw do
  root "static_pages#home"
  get "/login", to: "sessions#new"
  post "/sessions/create", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  post "/purchases/new", to: "purchases#new"
  resources :products
  resources :users
  resources :feedbacks
end

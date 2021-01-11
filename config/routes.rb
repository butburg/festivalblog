Rails.application.routes.draw do

  get "about", to: "generalpages#about"
  get "legal", to: "generalpages#legal"

  get "/login", to: "sessions#new"
  post "/login", to: 'sessions#create'
  delete "/logout", to: 'sessions#destroy'
  get "/signup", to: "users#new"

  resources :articles
  resources :users

  root 'articles#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

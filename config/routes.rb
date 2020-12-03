Rails.application.routes.draw do
  get 'uploads/index'
  get 'uploads/new'
  get 'uploads/create'
  get 'uploads/destroy'
  get "uploads/index"

  get "about", to: "generalpages#about"
  get "legal", to: "generalpages#legal"

  resources :articles
  resources :uploads, only: [:index, :new, :create, :destroy]

  root 'articles#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

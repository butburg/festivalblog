Rails.application.routes.draw do
  get "about", to: "generalpages#about"
  get "legal", to: "generalpages#legal"

  resources :articles

  root 'generalpages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

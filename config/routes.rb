Rails.application.routes.draw do
  get 'generalpages/home'
  get 'generalpages/about'
  get 'generalpages/legal'

  root 'generalpages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

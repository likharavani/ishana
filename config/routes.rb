Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root "homes#index"
  resources :projects
  get 'get_cities', to: 'homes#get_cities'
  resources :contacts, only: [:new, :create]
end

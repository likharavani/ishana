Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root "homes#index"
  resources :projects
  resources :contacts, only: [:new, :create]
end

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root "users#index"

  devise_for :users
  resources :tasks
  resources :users, only: [:show, :index]
  resources :settings, only: [:update]

  get 'profile', action: :edit, controller: :user

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

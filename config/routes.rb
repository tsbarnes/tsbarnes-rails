Rails.application.routes.draw do
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resource :resume, only: [:show]
  resources :projects, only: [:index, :show]
  resources :articles, only: [:index, :show]
  resources :services, only: [:index, :show]
  resources :categories, only: [:index, :show]
  root "root#index"
end

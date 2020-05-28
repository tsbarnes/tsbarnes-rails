Rails.application.routes.draw do
  devise_for :users
  resources :resumes
  resources :locations
  resources :profiles
  resources :educations
  resources :courses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

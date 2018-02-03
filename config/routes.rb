Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: "home#index"

  devise_for :users
  resources :users, only: %i(index destroy)
  resources :event_informations
end

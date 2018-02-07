Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: "home#index"

  devise_for :users
  resources :users, only: %i(index destroy)
  resources :event_informations do
    resources :sub_event_informations, only: %i(new show edit create update destroy) do
      resource :attendance, only: %i(destroy) do
        collection do
          post :attend
        end
      end
    end
  end
end

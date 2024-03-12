Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :courts, only: %i[index show new create edit update] do
    resources :bookings, only: %i[new create]
    resources :users, only: %i[role]
  end

  resources :bookings, only: %i[show edit update destroy]

  resources :users, only: %i[show edit update destroy] do
    resources :bookings, only: %i[index]
  end

  resources :courts, only: %i[destroy]
end

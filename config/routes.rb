Rails.application.routes.draw do
  devise_for :users
  root to: 'watches#index'
  resources :users
  resources :watches do
    resources :bookings, only: [ :new, :create]
  end
  resources :bookings, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do


  get 'business_cards/index'

  get 'business_cards/new'

  root "users#index"
  resources :users
  resources :business_cards




end

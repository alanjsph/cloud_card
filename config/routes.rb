Rails.application.routes.draw do

  root "users#index"

  resources :users do
    member do
      get :receivedcards
    end

    member do
      get :ownedbusinesscards
    end

    member do
      get :receivedcards_email
    end

  end

  resources :business_cards do
    member do
      get :email
    end
  end

  namespace :api, defaults: {format: :json}, constraints: {subdomain: 'api'}, path: '/'  do

    scope module: :v1 do

    end

  end




end

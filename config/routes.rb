Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :food_stalls do

     resources :reviews, only: [:new, :create, :show]

    collection do
    get :search_results
    end

    member do
    get :menu
    end

   end

    get 'search', to: 'pages#search'
  end


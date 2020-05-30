Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :food_stalls do

     resources :reviews, only: [:new, :create]

    collection do
    get :search_results
    end

    member do
    get :menu
    end

   end

    get 'search', to: 'pages#search'
    get 'users/:id', to: 'users#show', as: 'user'
    get 'users/:id/edit', to: 'users#edit', as: 'edit_user'
    patch 'users/:id', to: 'users#update'
  end


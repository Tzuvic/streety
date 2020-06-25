Rails.application.routes.draw do
  devise_for :users
  resources :users do
    resources :reviews, only: [:create]
    resources :vouches, only: [:create]
  end


  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :food_stalls do

     resources :reviews, only: [:new, :create]
     resources :menus, only: [:new, :create]

    collection do
    get :search_results
    end

    member do
    get :menu
    get :popular_foods
    end

   end

    get 'search', to: 'pages#search'
    # get 'users/:id', to: 'users#show', as: 'user'
    # get 'users/:id/edit', to: 'users#edit', as: 'edit_user'
    # patch 'users/:id', to: 'users#update'

    get 'qr_code', to: 'food_stalls#qr_code'

    # Sidekiq Web UI, only for admins.
      require "sidekiq/web"
      authenticate :user, lambda { |u| u.admin } do
        mount Sidekiq::Web => '/sidekiq'
      end

  end

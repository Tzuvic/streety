Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :food_stalls do
    collection do
    get :search_results
    end
  end

end

Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show] do
    resources :user_interests, only: [:new, :create]
  end
  resources :businesses, only: [:new, :create]
  root to: "pages#home"
  get "/pages/supplier", to: "pages#supplier", as: "supplier"
  resources :businesses, only: [:index, :update, :show, :destroy] do
    resources :product_or_services, only: [:new, :create]
  end
  resources :purchases, only: [:show, :create]
  get "/my_business/:business_id", to: "businesses#show_for_owner", as: "my_business"
  resources :categories  # New, create edit update destroy only for admins
  post "/add", to: "purchases#add", as: "add"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  root to: "pages#home"
  get "/pages/supplier", to: "pages#supplier", as: "supplier"
  resources :businesses, only: [:index, :update, :show, :destroy]
  get "/user_id/businesses/new", to: "businesses#new", as: "new_user_business"
  post "/users/:user_id/businesses", to: "businesses#create", as: "create_user_business"
  get "/users/:user_id/user_interests/new", to: "user_interests#new", as: "new_user_interest"
  post "/users/:user_id/user_interests", to: "user_interests#create", as: "create_user_interest"
  resources :purchases, only: [:show]
  get "/users/:user_id/purchases/new", to: "user_interests#new", as: "new_user_purchase"
  post "/users/:user_id/purchases", to: "user_interests#create", as: "create_user_purchase"
  get "/my_business/:business_id", to: "business#show_for_owner", as: "my_business"
  resources :categories  # New, create edit update destroy only for admins

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

Rails.application.routes.draw do
  # get "home/index"
  resources :products
  resource  :cart,     only: [:show, :create, :destroy]
  resources :line_items, only: [:create, :update, :destroy]
  resources :orders,   only: [:new, :create, :show] # "Receipt page" is orders#show

  # Seller Flow: Login -> Product Management -> Shipping Queue
  # Using a namespace to separate the Seller/Admin concerns
  namespace :admin do
    get "/", to: "dashboard#index"
    resources :products
    resources :orders, only: [:index, :show, :update] # Shipping queue & Mark as shipped
  end

  # Defines the root path route ("/")
  root "home#index"
end

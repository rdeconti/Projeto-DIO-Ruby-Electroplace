Rails.application.routes.draw do

  devise_for :users
  resources :products, only: [:new, :create, :index]
  root to: 'products#index'

  get "cart", to: "orders#cart"
  post "add_item", to: "orders#add_item_to_cart", as: :add_item_to_cart
  delete "remove_item", to: "orders#remove_item_from_cart", as: :remove_item_from_cart
  put "finish_order", to: "orders#finish_order", as: :finish_order

  get "my_purchases", to: "orders#my_purchases"
end

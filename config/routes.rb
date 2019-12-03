Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'products#index'
  resources :lineitems
  resources :sessions
  resources :charges
  resources :carts
  resources :payments
  resources :products do 
  resources :comments
end
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

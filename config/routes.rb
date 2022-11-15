Rails.application.routes.draw do
  resources :transaction_types
  resources :spare_part_orders_packed_spare_part_types
  resources :transactio_reasons
  resources :product_data_elements
  resources :spare_part_type_balances
  resources :oath_access_tokens
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

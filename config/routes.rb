Rails.application.routes.draw do
  resources :location_product_counts
  resources :spare_part_orders_recieved_spare_part_types
  resources :role_has_permissions
  resources :notifications
  resources :spare_part_orders_ordered_spare_part_types
  resources :spare_part_orders_spare_part_types
  resources :spare_part_types
  resources :data_element_groups
  resources :model_has_roles
  resources :model_has_permissions
  resources :spare_part_transcactions
  resources :permissions
  resources :spare_part_orders_issued_spare_part_types
  resources :oauth_personal_access_clients
  resources :data_elements
  resources :location_products
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

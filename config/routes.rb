Rails.application.routes.draw do
  resources :transactions
  resources :post_recorded_transactions
  resources :accounts
  resources :users
  resources :categories
  resources :currencies
end

Rails.application.routes.draw do
  devise_for :users
  resources :transactions
  resources :post_recorded_transactions
  resources :accounts
  resources :users
  resources :categories
  resources :currencies

  get 'static/home'
  root :to => 'static#home'
end

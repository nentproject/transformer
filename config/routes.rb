Rails.application.routes.draw do

  root to: 'visitors#index'

  match '/search' => 'search#index', via: [:get, :post], as: :search

  devise_for :users
  resources :users
end

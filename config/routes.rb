Rails.application.routes.draw do
  devise_for :users
  get 'relationships/create'
  get 'relationships/destroy'
  resources :users, only: [:index]
  resources :relationships, only: [:create, :destroy]
end

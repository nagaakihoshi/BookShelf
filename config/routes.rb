Rails.application.routes.draw do
  resources :reviews, only: [:index, :destroy]
  root 'books#index'
  resources :books do
    resources :reviews, except: [:index, :destroy]
  end
  devise_for :users
end
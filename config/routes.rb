Rails.application.routes.draw do
  devise_for :users
  root to: 'receipts#index'
  resources :receipts, only: [:index, :new, :create, :show, :edit, :destroy]
end

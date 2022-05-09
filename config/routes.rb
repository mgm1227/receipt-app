Rails.application.routes.draw do
  devise_for :users
  root to: 'receipts#index'
  resources :receipts, except: [:show]
end

Rails.application.routes.draw do
  post 'payment_notification/create'

  resources :products
  resources :payment_notification, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'products#index'
end

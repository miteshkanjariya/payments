Rails.application.routes.draw do
  post 'payment_notification/create'

  resources :products


  resources :payment_notification, only: [:create, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/payment_return', to: 'payment_notification#payment_return', as: 'payment_return'
  root 'products#index'
end

Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  get 'payment_notification/create'

  resources :subscrptions
  resources :shippings
  resources :contacts
  resources :addresses
  # devise_for :users
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :brands
  resources :categories
  resources :customs
  resources :faqs
  resources :order_statuses
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  resources :orders
  resources :charges
  get 'home/index' 
  root 'home#index'
  get 'home/login_form'
  get 'home/forget_psw'
  get 'home/signup_form'
  get 'home/checkout'
  get 'home/checkout_shipping'
  get 'home/contact'
  post 'home/contact_us_mailer'
  get 'home/about_us'
  get 'home/delivery_policy'
  get 'home/privarcy_policy'
  get 'home/terms_of_delivery'
  get 'home/return'
  get 'paypal/checkout', to: 'subscriptions#paypal_checkout'
  resources :payment_notification, only: [:create]

end

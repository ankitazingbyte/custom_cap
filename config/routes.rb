Rails.application.routes.draw do
  devise_for :users
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
  get 'home/custom_snapback'
  get 'home/custom_fitted_hat'
  get 'home/custom_dad_hat'
  get 'home/custom_camo_hat'
  get 'home/custom_beanies'
  get 'home/custom_panel_hat'
  get 'home/custom_trucker_hat'
  get 'home/custom_bucket_hat'
  get 'home/custom_athletic_hat'
  get 'home/custom_golf_hat'
  get 'home/custom_military_hat'
  get 'home/login_form'
  get 'home/forget_psw'
  get 'home/signup_form'
  get 'home/checkout'
  get 'home/checkout_shipping'
  get 'home/checkout_payment'
  get 'home/contact'
end

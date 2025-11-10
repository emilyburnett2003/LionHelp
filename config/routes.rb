Rails.application.routes.draw do
  resources :reviews
  get '/vendor_reviews/:vendor_id', to: 'reviews#show_vendor_reviews', as: 'vendor_reviews'
  resources :services
  resources :accounts
  post '/login', to: 'accounts#login', as: 'login'
  root 'accounts#index'
end
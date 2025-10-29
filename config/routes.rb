Rails.application.routes.draw do
  get 'reviews/:vendor_id', to: 'reviews#show_vendor_reviews', as: 'vendor_reviews'
  resources :reviews, only: [:index]
  resources :services
  root 'services#index'
end

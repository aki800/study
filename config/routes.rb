Rails.application.routes.draw do
  devise_for :users
  root 'categories#index'
  resources :tweets
  resources :tweet_images
end

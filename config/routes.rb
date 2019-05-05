Rails.application.routes.draw do
  devise_for :users
  root 'categories#index'
  resources :categories do
    resources :tweets
  end
  resources :tweet_images
end

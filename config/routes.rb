Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root 'categories#index'
    resources :users
    resources :categories do
      member do
        get 'remove'
      end
      member do
        get 'showgoals'
      end
      resources :tweets
      resources :goals
      resources :category_users
    end
  resources :tweet_images
  resources :relationships, only: [:create, :destroy]
end

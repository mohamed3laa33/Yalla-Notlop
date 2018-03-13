Rails.application.routes.draw do
  resources :orders do
  resources :items
  end
  resources :friendships
  # resources :orders
  devise_for :users
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

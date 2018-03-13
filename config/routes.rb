Rails.application.routes.draw do
  resources :group_users
  resources :groups
  resources :friendships
  resources :orders
  resources :group
  resources :user_groups
  devise_for :users
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

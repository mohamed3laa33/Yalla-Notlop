Rails.application.routes.draw do

  resources :group_users
  resources :groups
  #resources :friendships
  #resources :orders



  
  get 'events/index'
  mount ActionCable.server => '/cable'

  resources :orders do
  resources :items
  end
  resources :friendships
  # resources :orders

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

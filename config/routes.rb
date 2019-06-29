Rails.application.routes.draw do

  resources :customers
  root to: 'home#index'

  devise_for :users
  get 'reviews/index'
  get 'reviews/show'
  get 'reviews/new'
  get 'reviews/edit'

  resources :teas do
  resources :reviews
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  root 'green_spaces#index'
  devise_for :users

  resources :green_spaces, only: [:index, :show]
end
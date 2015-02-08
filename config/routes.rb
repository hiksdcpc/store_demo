Rails.application.routes.draw do
  root 'stores#index'
  devise_for :users
  resources :stores do
    resources :votes, only: [:create]
  end
  resources :contacts, only:[:new, :create]
end

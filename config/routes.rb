Rails.application.routes.draw do
  devise_for :users
  root to: 'assignatures#index'
  get '/profile', to: 'users#profile', as: 'profile'
  resources :assignatures, only: [:index, :show]
  resources :lessons, only: [:show] do  
    resources :tickets, only: [:index, :create]
    resources :flashcards, only: [:index]
  end
  resources :homeworks, only: [:index, :show] do
    resources :user_homeworks, only: [:create, :update]
  end
  resources :user_homeworks, only: [:update]
end

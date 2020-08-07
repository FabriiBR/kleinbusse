Rails.application.routes.draw do
  devise_for :users
  root to: 'assignatures#index'
  get '/profile', to: 'users#profile', as: 'profile'
  resources :assignatures, only: [:index, :show] do
    resources :lessons, only: [:index] 
    resources :homeworks, only: [:index] 
  end

  resources :lessons, only: [:show] do  
    resources :tickets, only: [:create, :new]
    resources :flashcards, only: [:index]
  end

  resources :homeworks, only: [:index, :show] do
    resources :user_homeworks, only: [:create, :update]
  end
  resources :user_homeworks, only: [:update]
  resources :tickets, only: [:index]
end

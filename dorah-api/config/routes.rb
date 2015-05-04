Rails.application.routes.draw do

  resources :projects
  resources :tasks
  resources :users, only: [:index, :show]

  devise_for :users, controllers: {sessions: 'sessions'}

  root to: 'home#index'
end

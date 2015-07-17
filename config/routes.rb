Rails.application.routes.draw do
  devise_for :users

  root to: "pages#index"
  resources :pages, only: [:show]
  resources :events, only: [:index, :show]
  namespace :admin do
    get "/" => "dashboard#index"
    resources :dashboard, only: [:index]
    resources :events, only: [:index, :new, :edit, :create, :update, :destroy]
    resources :pages, only: [:index, :new, :edit, :create, :update, :destroy] do
      resources :sidebar_items, only: [:new, :edit, :create, :update, :destroy]
    end
    resources :users, only: [:index, :new, :edit, :create, :update, :destroy]
  end
end

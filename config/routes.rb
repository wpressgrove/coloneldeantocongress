Rails.application.routes.draw do
  devise_for :users

  root to: "pages#index"
  resources :pages, only: [:show]
  namespace :admin do
    get "/" => "dashboard#index"
    resources :dashboard, only: [:index]
    resources :pages, only: [:index, :new, :edit, :create, :update, :destroy]
    resources :users, only: [:index, :new, :edit, :create, :update, :destroy]
  end
end

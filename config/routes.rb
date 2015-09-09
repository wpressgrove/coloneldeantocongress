Rails.application.routes.draw do
  devise_for :users

  root to: "pages#index"
  resources :emails, only: [:create, :destroy]
  resources :pages, only: [:show]
  resources :donations, only: [:new, :create]
#  resources :events, only: [:index, :show]
  namespace :admin do
    get "/" => "dashboard#index"
    resources :dashboard, only: [:index]
    resources :events, only: [:index, :new, :edit, :create, :update, :destroy]
    resources :donations, only: [:index]
    resources :images, only: [:index, :new, :edit, :create, :update]
    resources :nav_tabs, only: [:index, :new, :edit, :create, :update, :destroy]
    resources :pages, only: [:index, :new, :edit, :create, :update, :destroy] do
      resources :sidebar_items, only: [:new, :edit, :create, :update, :destroy]
      resources :slideshow_items, only: [:index, :new, :edit, :create, :update, :destroy]
    end
    resources :emails, only: [:index]
    resources :users, only: [:index, :new, :edit, :create, :update, :destroy]
  end
end

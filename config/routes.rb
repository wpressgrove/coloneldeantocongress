Rails.application.routes.draw do
  devise_for :users

  root to: "home#index"
  namespace :admin do
    get "/" => "dashboard#index"
    resources :dashboard, only: [:index]
  end
end

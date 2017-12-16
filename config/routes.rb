Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :videos, only: [:index, :show] do
    member do
      post :collect
      post :discollect
    end
    resources :reviews
  end

  namespace :account do
    resources :favorites
    resources :reviews
  end

  root "videos#index"

  namespace :admin do
    resources :videos
  end
end

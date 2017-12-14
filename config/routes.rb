Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :videos do
    member do
      post :collect
      post :discollect
    end
  end

  namespace :account do
    resources :favorites
  end

  root "videos#index"

  namespace :admin do
    resources :videos
  end
end

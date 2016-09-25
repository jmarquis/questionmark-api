Rails.application.routes.draw do

  resources :sessions, only: [:index, :create, :destroy]

  resources :users, only: [:create]

  resources :projects do
    resources :lists do
      resources :cards
    end
  end

end

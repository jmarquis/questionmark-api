Rails.application.routes.draw do

  resources :sessions, only: [:index, :create]
  delete "sessions", to: "sessions#destroy"

  resources :users, only: [:create]

  resources :workspaces, shallow: true do
    resources :projects do
      resources :lists do
        resources :cards
      end
    end
  end

end

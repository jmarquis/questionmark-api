Rails.application.routes.draw do

  resources :projects do
    resources :lists do
      resources :cards
    end
  end
  
end

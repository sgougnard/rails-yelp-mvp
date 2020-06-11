Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :restaurants, except: [:edit, :update, :destroy] do
resources :reviews, only: [:new, :create] # shallow nesting only nesting what you need
end
resources :reviews, only: [:edit, :show, :update, :destroy]
end

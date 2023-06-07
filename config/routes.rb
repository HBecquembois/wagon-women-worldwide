Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :users, only: [:index, :show]
  get "/dashboard", to: "pages#dashboard"
  get "/pages", to: "pages#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

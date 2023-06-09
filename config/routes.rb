Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :users, only: [:index, :show] do
    collection do
      post "search"
      post "mentor_search"
    end
    resources :chatrooms, only: :create
  end
  post "/users/:id", to: "users#favorite", as: "user_favorite"
  patch "/users/:id", to: "users#unfavorite", as: "user_unfavorite"

  get "/mentors", to: "users#mentors"
  get "/dashboard", to: "pages#dashboard"
  get "/pages", to: "pages#index"
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

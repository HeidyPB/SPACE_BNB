Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'dashboard', to: 'dashboard#index'

  resources :spacecrafts do
    resources :reservations, only: [:new, :create]
  end

  resources :reservations, only: [:show]
  # Defines the root path route ("/")
  # root "articles#index"
end

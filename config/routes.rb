Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get "/homes/about" => "homes#about", as: "about"

  resources :users, only: [:show, :index, :edit, :update]
  resources :books, only: [:new, :index, :show, :edit, :update, :destroy, :create]
end

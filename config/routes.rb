Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get "/homes/about" => "homes#about", as: "about"

  resources :users, only: [:show, :index, :edit]
  resources :books, only: [:new, :index, :show, :edit, :create]
end

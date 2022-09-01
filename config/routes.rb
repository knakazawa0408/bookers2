Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get "/homes/about" => "homes#about", as: "about"

  # get 'users/show'
  # get 'users/edit'
  resources :user, only: [:show, :edit, :update]
  resources :books, only: [:new, :index, :show, :edit,]
  # get 'books/new'
  # get 'books/index'
  # get 'books/show'
  # get 'books/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

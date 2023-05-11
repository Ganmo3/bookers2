Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get "/home/about" => "homes#about"

  resources :books, only: [:new, :create, :index, :show, :edit, :destroy]
  patch 'books/:id' => 'books#update', as: 'update_book'

  resources :users, only: [:index, :show, :edit]
  patch 'users/:id' => 'users#update', as: 'update_user'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end

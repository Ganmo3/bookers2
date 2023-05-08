Rails.application.routes.draw do

  resources :books, only: [:new, :create, :index, :show, :edit, :destroy]
  patch 'books/:id' => 'books#update', as: 'update_book'
  devise_for :users
  root to: "homes#top", as: "top"
  get "/homes/about" => "homes#about", as: "about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end

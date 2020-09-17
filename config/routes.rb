Rails.application.routes.draw do
  devise_for :users
  root "layouts#top"
  get 'home/about' => 'layouts#about'
  resources :books, only: [:create, :index, :show, :edit, :update, :destroy]
  resources :users, only: [:show, :edit, :update, :index]
end

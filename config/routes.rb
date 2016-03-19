Rails.application.routes.draw do

  resources :dogs

  get 'about' => 'welcome#about'

  devise_for :users
  resources :users, only: [:update, :show, :index]

  root to: 'welcome#index'
  
end

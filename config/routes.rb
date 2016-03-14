Rails.application.routes.draw do
  get 'welcome/index'

  get 'welcome/about'

  devise_for :users
  resources :users, only: [:update, :show, :index]
  
  #get 'welcome/index'

  root to: 'welcome#index'
  
end

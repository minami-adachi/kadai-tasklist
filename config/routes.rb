Rails.application.routes.draw do
  get 'taskposts/create'

  get 'taskposts/destroy'

  root to: 'toppages#index'
  
    get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  resources :taskposts, only: [:create, :destroy]
  
end

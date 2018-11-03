Rails.application.routes.draw do
  get 'chat', to:'chat#index'
  root to: 'home#lp'
  devise_for :users
  get 'home', to:'home#index'
  get 'maps', to:'maps#index'
  get 'users', to:'users#index'
  get 'users/new', to:'users#new'
  post 'users/create', to:'users#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

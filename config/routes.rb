Rails.application.routes.draw do
  root to: 'home#lp'
  devise_for :users
  get 'home', to:'home#index'
  get 'maps', to:'maps#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

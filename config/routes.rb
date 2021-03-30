Rails.application.routes.draw do
  devise_for :pazientes
  devise_for :users
  resources :visites
  get 'home/index' , to:'home#index'
  root to: 'home#index'
  get 'home/about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :books
  devise_for :users
  #get 'principal/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'principal#index'

end

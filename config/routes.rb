Rails.application.routes.draw do
  get 'homes/index'

  get 'dashboards/index'

  root 'homes#index'
  resources :supplies
  resources :deliveries
  devise_for :users, controllers:{
  	invitations: "invitations"
  	#registrations: "registrations"
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

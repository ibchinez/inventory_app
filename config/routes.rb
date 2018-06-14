Rails.application.routes.draw do
root 'supplies#index'
  resources :supplies
  resources :deliveries
  devise_for :users, controllers:{
  	invitations: "invitations"
  	#registrations: "registrations"
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do

  resources :stocks
  resources :posts
  get 'homes/index', to: 'homes#index', as: :'/'

  get 'dashboards/index'

  resources :messages, only:[:create]
  root 'homes#index'
  resources :supplies, path: 'outwards'
  resources :deliveries, path: 'inwards'
  devise_for :users, path: '', 

  path_names:{
    sign_in: 'admin', sign_out: 'logout'    
  },

  controllers:{
  	#invitations: "invitations",
    registrations: "registrations"
  }

    get 'admin', to: 'devise/sessions#new'

      post 'create' => 'homes#create'

      match "/404", :to => "errors#not_found", :via => :all
      match "/422", :to => "errors#unacceptable", :via => :all
      match "/500", :to => "errors#internal_error", :via => :all
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

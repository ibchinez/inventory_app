Rails.application.routes.draw do

  get 'homes/index', to: 'homes#index', as: :'/'

  get 'dashboards/index'

  resources :messages, only:[:create]
  root 'homes#index'
  resources :supplies
  resources :deliveries
  devise_for :users, path: '', 

  path_names:{
    sign_in: 'admin', sign_out: 'logout'    
  },

  controllers:{
  	invitations: "invitations"
  }

    get 'admin', to: 'devise/sessions#new'

      post 'create' => 'homes#create'
      get "/404", :to => "errors#not_found"
      get "/422", :to => "errors#unacceptable"
      get "/500", :to => "errors#internal_error"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :options
    namespace :api do        
        get '/profile', to: 'users#profile'
        post '/signup', to: 'users#create'
        post '/login', to: 'auth#create'
        post '/checkout', to: 'orders#create'
        
        resources :options
        resources :group_options 
        resources :users, only: [:index, :show, :destroy]
        resources :orders, only: [:index, :show, :destroy]
        resources :categories
        resources :items
    end
    
    #Serve websocket cable requests in-process
    mount ActionCable.server => '/cable'

    get '/notification', to: 'notifications#index'

    post '/admin', to: "admin#create"
    post '/charge', to: "charge#create"

end

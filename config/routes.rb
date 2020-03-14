Rails.application.routes.draw do

    #localhost:3000/api/categories
    #localhost:3000/api/items
    namespace :api do
        post '/checkout', to: 'orders#create'

        get '/users', to: 'users#index'
        get '/users/:id', to: 'users#show'  
        get '/profile', to: 'users#profile'
        post '/signup', to: 'users#create'
        
        post '/login', to: 'auth#create'
        
        resources :orders
        resources :categories
        resources :items
    end

    post '/admin', to: "admin#create"
    post '/charge', to: "charge#create"

end

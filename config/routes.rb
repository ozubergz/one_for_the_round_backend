Rails.application.routes.draw do

    #localhost:3000/api/categories
    #localhost:3000/api/items
    namespace :api do
        post '/checkout', to: 'cart#create'

        post '/signup', to: 'users#create'
        get '/profile', to: 'users#profile'
        
        post '/login', to: 'auth#create'

        get '/categories', to: 'categories#index'
        get '/categories/:id', to: 'categories#show'
        put '/categories/:id', to: 'categories#update'
        delete 'categories/:id', to: 'categories#destroy'

        get '/items', to: 'items#index'
        post '/items', to: 'items#create'
        get '/items/:id', to: 'items#show'
        put '/items/:id', to: 'items#update'
        delete '/items/:id', to: 'items#destroy'

    end

    post '/admin', to: "admin#create"
    post '/charge', to: "charge#create"

end

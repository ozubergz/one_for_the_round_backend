Rails.application.routes.draw do

    #localhost:3000/api/categories
    namespace :api do
        post '/checkout', to: 'cart#create'

        post '/signup', to: 'users#create'
        get '/profile', to: 'users#profile'
        
        post '/login', to: 'auth#create'

        get '/categories', to: 'categories#index'
        get '/categories/:id', to: 'categories#show'
    end

    post '/charge', to: "charge#create"

end

Rails.application.routes.draw do

    #localhost:3000/api/categories
    #localhost:3000/api/items
    namespace :api do
        post '/checkout', to: 'order#create'

        get '/users', to: 'users#index'        
        get '/profile', to: 'users#profile'
        post '/signup', to: 'users#create'
        
        post '/login', to: 'auth#create'

        resources :categories
        resources :items
    end

    post '/admin', to: "admin#create"
    post '/charge', to: "charge#create"

end

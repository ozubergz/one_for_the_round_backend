Rails.application.routes.draw do
    namespace :api do
        
        get '/profile', to: 'users#profile'
        post '/signup', to: 'users#create'
        post '/login', to: 'auth#create'
        post '/checkout', to: 'orders#create'
        
        resources :users, only: [:index, :show, :destroy]
        resources :orders, only: [:index, :show, :destroy]
        resources :categories
        resources :items
    end

    post '/admin', to: "admin#create"
    post '/charge', to: "charge#create"

end

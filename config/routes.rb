Rails.application.routes.draw do

    #localhost:3000/api/categories
    namespace :api do
        

        get '/categories', to: "categories#index"
        get '/categories/:id', to: "categories#show"
    end

    post '/charge', to: "charge#create"

end

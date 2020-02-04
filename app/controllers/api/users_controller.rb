class Api::UsersController < ApplicationController

    def create
        #create new user when registering
        user = User.create(user_params)
        if user.valid?
            #make token with user id
            token = encode_token(user_id: user.id)
            #send json to the frontend with users jwt token
            render json: { user: UserSerializer.new(user), jwt: token }, status: :created
        else
            render json: user.errors.full_messages, status: :not_acceptable
        end
    end

    private

    def user_params
        params.permit(:email, :password, :first_name, :last_name, :telephone)
    end
end

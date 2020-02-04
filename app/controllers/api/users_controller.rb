class Api::UsersController < ApplicationController

    def profile
        #when current_user from Application is true
        if current_user
            #send current_user
            render json: { user: UserSerializer.new(current_user) }, status: :accepted
        else
            #tell user to 'Please log in' if there's no current user
            render json: { message: 'Please log in'}, status: :unauthorized unless logged_in?
        end
    end

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

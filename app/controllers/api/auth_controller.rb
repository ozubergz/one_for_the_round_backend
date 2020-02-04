class Api::AuthController < ApplicationController
    #login with user's email to authenticate

    def create
        #find user by email
        user = User.find_by(email: user_login_params[:email]);
        if user && user.authenticate(user_login_params[:password])
            # make new token when logged in
            token = encode_token(user_id: user.id)
            render json: { user: UserSerializer.new(user), jwt: token}, status: :accepted
        else
            render json: { message: 'Invalid username or password' }, status: :unauthorized
        end
    end

    private 
    
    def user_login_params
        params.permit(:email, :password)
    end
end

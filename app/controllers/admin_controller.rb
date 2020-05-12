class AdminController < ApplicationController

    def create
        user = User.find_by(email: admin_params[:email]);
        if user && user.admin && user.authenticate(admin_params[:password])
            render json: { user: UserSerializer.new(user) }, status: :accepted
        else
            render json: { message: 'Invalid username or password'}, status: :unauthorized
        end
    end

    private
    
    def admin_params
        params.require(:admin).permit(:email, :password)
    end
end

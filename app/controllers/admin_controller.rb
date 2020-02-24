class AdminController < ApplicationController

    def create
        user = User.find_by(email: admin_params[:email]);        
        if user && user.admin && user.authenticate(admin_params[:password])
            render json: { message: "Welcome admin"}
        else
            render json: { message: 'Invalid username or password'}
        end
    end
    
    private
    
    def admin_params
        params.permit(:email, :password)
    end
end

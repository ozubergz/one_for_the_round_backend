class Api::CartController < ApplicationController

    #persist users cart
    def create
        cart = Cart.create(cart_params);
        if cart.valid?
            render json: { message: 'Persisting cart was successful'}, status: :created
        else
            render json: { error: 'Persisting cart failed'}
        end
    end

    private

    def cart_params
        params.permit(:user_id, items: [:id, :name, :description, :price, :selections])
    end

end


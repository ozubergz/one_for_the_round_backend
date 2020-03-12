class Api::OrderController < ApplicationController

    #persist users order
    def create
        order = Order.create(cart_params);
        if order.valid?
            render json: { message: 'Persisting order was successful'}, status: :created
        else
            render json: { error: 'Persisting order failed'}
        end
    end

    private

    def cart_params
        params.permit(:user_id, items: [:id, :name, :description, :price, :selections])
    end

end


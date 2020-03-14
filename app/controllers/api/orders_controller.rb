class Api::OrdersController < ApplicationController
    before_action :set_headers

    def index
        orders = Order.all
        render json: orders
    end

    def show
        order = Order.find_by(id: params[:id])
        if order
            render json: order
        else
            render json: { message: "Not Found" }, status: :service_unavailable
        end
    end

    def create
        #persist users order
        order = Order.create(order_params);
        if order.valid?
            render json: { message: 'Persisting order was successful'}, status: :created
        else
            render json: { error: 'Persisting order failed'}
        end
    end

    private

    def order_params
        params.permit(:user_id, items: [:id, :name, :description, :price, :selections])
    end

    def set_headers
        response.headers['Access-Control-Expose-Headers'] = 'Content-Range'
        response.headers['Content-Range'] = "0-10/#{Order.all.length}"
    end

end


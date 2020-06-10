class Api::OrdersController < ApplicationController
    before_action :set_headers

    def index
        orders = Order.order(sort).all[range[0]..range[1]]
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

    def update
        order = Order.find(params[:id])
        if order.update(pending: params[:pending])
            render json: order
        else
            render json: { error: "Update failed"}
        end
    end

    def create
        #persist users order
        order = Order.create(order_params);
        if order.valid?
            render json: { message: 'success'}, status: :created
        else
            render json: { error: 'failed' }
        end
    end

    def destroy
        order = Order.find(params[:id])
        order.destroy
        render json: order
    end

    def destroy_all
        Order.where(:id => params[:ids]).destroy_all
        render json: {:ids => params[:ids] }, status: :ok
    end

    def sort
        sort = params[:sort] ? JSON.parse(params[:sort]).join(' ') : 'id DESC'
        sort
   end

   def range
       # parse query params to get range of array
       range = params[:range] ? JSON.parse(params[:range]) : [0, 9]
       range
   end

    private

    def order_params
        params.require(:order).permit(:customer, :phone, :address, :amount, :email, items: [:id, :name, :description, :price, :select_options => [:name]])
    end

    def set_headers
        response.headers['Access-Control-Expose-Headers'] = 'Content-Range'
        response.headers['Content-Range'] = "0-10/#{Order.all.length}"
    end

end


class Api::ItemsController < ApplicationController
    before_action :set_headers

    def index
        # byebug
        items = Item.order(sort).all[range[0]..range[1]]
        render json: items
    end

    def show
        item = Item.find_by(id: params[:id])
        if item
            render json: item
        else
            render json: {message: "Not Found"}, status: :service_unavailable
        end
    end

    def create
        item = Item.create(item_params)
        if item.valid?
            render json: item, status: :created
        else
            render json: { errors: item.errors.full_messages }
        end
    end

    def update
        item = Item.find(params[:id])
        if item.update(item_params)
            render json: item
        else
            render json: {error: 'Update failed'}
        end
    end

    def destroy
        item = Item.find(params[:id])
        item.destroy
        render json: item
    end

    def sort
         sort = JSON.parse(params[:sort])
         sort.join(' ')
    end

    def range
        # parse query params to get range of array
        range = JSON.parse(params[:range])
        range
    end

    # REST API expects exposer header, content-rage
    def set_headers
        response.headers['Access-Control-Expose-Headers'] = 'Content-Range'
        response.headers['Content-Range'] = "0-10/#{Item.all.length}"
    end

    private
    
    def item_params
        params.require(:item).permit(:name, :description, :price, :selections, :category_id)
    end
    
end

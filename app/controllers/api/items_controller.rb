class Api::ItemsController < ApplicationController
    before_action :set_headers

    def index
        items = Item.all
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
